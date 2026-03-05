import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_args.dart';
import 'stream_state.dart';
import 'stream_stream_mode_details.dart';

/// Provides a Kinesis Stream resource. Amazon Kinesis is a managed service that
/// scales elastically for real-time processing of streaming big data.
///
/// For more details, see the [Amazon Kinesis Documentation](https://aws.amazon.com/documentation/kinesis/).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testStream = new aws.kinesis.Stream("test_stream", {
///     name: "kinesis-test",
///     shardCount: 1,
///     retentionPeriod: 48,
///     shardLevelMetrics: [
///         "IncomingBytes",
///         "OutgoingBytes",
///     ],
///     streamModeDetails: {
///         streamMode: "PROVISIONED",
///     },
///     tags: {
///         Environment: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_stream = aws.kinesis.Stream("test_stream",
///     name="kinesis-test",
///     shard_count=1,
///     retention_period=48,
///     shard_level_metrics=[
///         "IncomingBytes",
///         "OutgoingBytes",
///     ],
///     stream_mode_details={
///         "stream_mode": "PROVISIONED",
///     },
///     tags={
///         "Environment": "test",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testStream = new Aws.Kinesis.Stream("test_stream", new()
///     {
///         Name = "kinesis-test",
///         ShardCount = 1,
///         RetentionPeriod = 48,
///         ShardLevelMetrics = new[]
///         {
///             "IncomingBytes",
///             "OutgoingBytes",
///         },
///         StreamModeDetails = new Aws.Kinesis.Inputs.StreamStreamModeDetailsArgs
///         {
///             StreamMode = "PROVISIONED",
///         },
///         Tags =
///         {
///             { "Environment", "test" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kinesis.NewStream(ctx, "test_stream", &kinesis.StreamArgs{
/// 			Name:            pulumi.String("kinesis-test"),
/// 			ShardCount:      pulumi.Int(1),
/// 			RetentionPeriod: pulumi.Int(48),
/// 			ShardLevelMetrics: pulumi.StringArray{
/// 				pulumi.String("IncomingBytes"),
/// 				pulumi.String("OutgoingBytes"),
/// 			},
/// 			StreamModeDetails: &kinesis.StreamStreamModeDetailsArgs{
/// 				StreamMode: pulumi.String("PROVISIONED"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("test"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kinesis.Stream;
/// import com.pulumi.aws.kinesis.StreamArgs;
/// import com.pulumi.aws.kinesis.inputs.StreamStreamModeDetailsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var testStream = new Stream("testStream", StreamArgs.builder()
///             .name("kinesis-test")
///             .shardCount(1)
///             .retentionPeriod(48)
///             .shardLevelMetrics(
///                 "IncomingBytes",
///                 "OutgoingBytes")
///             .streamModeDetails(StreamStreamModeDetailsArgs.builder()
///                 .streamMode("PROVISIONED")
///                 .build())
///             .tags(Map.of("Environment", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testStream:
///     type: aws:kinesis:Stream
///     name: test_stream
///     properties:
///       name: kinesis-test
///       shardCount: 1
///       retentionPeriod: 48
///       shardLevelMetrics:
///         - IncomingBytes
///         - OutgoingBytes
///       streamModeDetails:
///         streamMode: PROVISIONED
///       tags:
///         Environment: test
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Kinesis Streams using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:kinesis/stream:Stream test_stream pulumi-kinesis-test
/// ```
///
/// [1]: https://aws.amazon.com/documentation/kinesis/
/// [2]: https://docs.aws.amazon.com/kinesis/latest/dev/amazon-kinesis-streams.html
/// [3]: https://docs.aws.amazon.com/streams/latest/dev/monitoring-with-cloudwatch.html
class Stream extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) specifying the Stream (same as `id`)
  late final pulumi.Output<String> arn;

  /// The encryption type to use. The only acceptable values are `NONE` or `KMS`. The default value is `NONE`.
  late final pulumi.Output<String?> encryptionType;

  /// A boolean that indicates all registered consumers should be deregistered from the stream so that the stream can be destroyed without error. The default value is `false`.
  late final pulumi.Output<bool?> enforceConsumerDeletion;

  /// The GUID for the customer-managed KMS key to use for encryption. You can also use a Kinesis-owned master key by specifying the alias `alias/aws/kinesis`.
  late final pulumi.Output<String?> kmsKeyId;

  /// The maximum size for a single data record in KiB. The minimum value is 1024. The maximum value is 10240.
  late final pulumi.Output<int> maxRecordSizeInKib;

  /// A name to identify the stream. This is unique to the AWS account and region the Stream is created in.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Length of time data records are accessible after they are added to the stream. The maximum value of a stream's retention period is 8760 hours. Minimum value is 24. Default is 24.
  late final pulumi.Output<int?> retentionPeriod;

  /// The number of shards that the stream will use. If the `stream_mode` is `PROVISIONED`, this field is required.
  /// Amazon has guidelines for specifying the Stream size that should be referenced when creating a Kinesis stream. See [Amazon Kinesis Streams](https://docs.aws.amazon.com/kinesis/latest/dev/amazon-kinesis-streams.html) for more.
  late final pulumi.Output<int?> shardCount;

  /// A list of shard-level CloudWatch metrics which can be enabled for the stream. See [Monitoring with CloudWatch](https://docs.aws.amazon.com/streams/latest/dev/monitoring-with-cloudwatch.html) for more. Note that the value ALL should not be used; instead you should provide an explicit list of metrics you wish to enable.
  late final pulumi.Output<List<String>?> shardLevelMetrics;

  /// Indicates the [capacity mode](https://docs.aws.amazon.com/streams/latest/dev/how-do-i-size-a-stream.html) of the data stream. Detailed below.
  late final pulumi.Output<StreamStreamModeDetails> streamModeDetails;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Stream].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Stream]. {@macro pulumi_kinesis_stream_stream_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Stream(String name, {StreamArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:kinesis/stream:Stream',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    arn = registerOutput<String>('arn');
    encryptionType = registerOutput<String?>('encryptionType');
    enforceConsumerDeletion = registerOutput<bool?>('enforceConsumerDeletion');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    maxRecordSizeInKib = registerOutput<int>('maxRecordSizeInKib');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    retentionPeriod = registerOutput<int?>('retentionPeriod');
    shardCount = registerOutput<int?>('shardCount');
    shardLevelMetrics = registerOutput<List<String>?>('shardLevelMetrics');
    streamModeDetails = registerOutput<StreamStreamModeDetails>(
      'streamModeDetails',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StreamStreamModeDetails.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Stream] resource's state with the given [name] and [id].
  static Stream get(
    String name,
    pulumi.Input<String> id, {
    StreamState? state,
  }) {
    return Stream._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Stream._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:kinesis/stream:Stream',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    encryptionType = registerOutput<String?>('encryptionType');
    enforceConsumerDeletion = registerOutput<bool?>('enforceConsumerDeletion');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    maxRecordSizeInKib = registerOutput<int>('maxRecordSizeInKib');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    retentionPeriod = registerOutput<int?>('retentionPeriod');
    shardCount = registerOutput<int?>('shardCount');
    shardLevelMetrics = registerOutput<List<String>?>('shardLevelMetrics');
    streamModeDetails = registerOutput<StreamStreamModeDetails>(
      'streamModeDetails',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StreamStreamModeDetails.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
