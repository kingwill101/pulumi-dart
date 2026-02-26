import 'package:pulumi/pulumi.dart';
import '../stream_kinesis_configuration/stream_kinesis_configuration.dart';
import 'stream_args2.dart';

/// Provides an AWS Quantum Ledger Database (QLDB) Stream resource
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.qldb.Stream("example", {
/// ledgerName: "existing-ledger-name",
/// streamName: "sample-ledger-stream",
/// roleArn: "sample-role-arn",
/// inclusiveStartTime: "2021-01-01T00:00:00Z",
/// kinesisConfiguration: {
/// aggregationEnabled: false,
/// streamArn: "arn:aws:kinesis:us-east-1:xxxxxxxxxxxx:stream/example-kinesis-stream",
/// },
/// tags: {
/// example: "tag",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.qldb.Stream("example",
/// ledger_name="existing-ledger-name",
/// stream_name="sample-ledger-stream",
/// role_arn="sample-role-arn",
/// inclusive_start_time="2021-01-01T00:00:00Z",
/// kinesis_configuration={
/// "aggregation_enabled": False,
/// "stream_arn": "arn:aws:kinesis:us-east-1:xxxxxxxxxxxx:stream/example-kinesis-stream",
/// },
/// tags={
/// "example": "tag",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Qldb.Stream("example", new()
/// {
/// LedgerName = "existing-ledger-name",
/// StreamName = "sample-ledger-stream",
/// RoleArn = "sample-role-arn",
/// InclusiveStartTime = "2021-01-01T00:00:00Z",
/// KinesisConfiguration = new Aws.Qldb.Inputs.StreamKinesisConfigurationArgs
/// {
/// AggregationEnabled = false,
/// StreamArn = "arn:aws:kinesis:us-east-1:xxxxxxxxxxxx:stream/example-kinesis-stream",
/// },
/// Tags =
/// {
/// { "example", "tag" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/qldb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := qldb.NewStream(ctx, "example", &qldb.StreamArgs{
/// LedgerName:         pulumi.String("existing-ledger-name"),
/// StreamName:         pulumi.String("sample-ledger-stream"),
/// RoleArn:            pulumi.String("sample-role-arn"),
/// InclusiveStartTime: pulumi.String("2021-01-01T00:00:00Z"),
/// KinesisConfiguration: &qldb.StreamKinesisConfigurationArgs{
/// AggregationEnabled: pulumi.Bool(false),
/// StreamArn:          pulumi.String("arn:aws:kinesis:us-east-1:xxxxxxxxxxxx:stream/example-kinesis-stream"),
/// },
/// Tags: pulumi.StringMap{
/// "example": pulumi.String("tag"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.qldb.Stream;
/// import com.pulumi.aws.qldb.StreamArgs;
/// import com.pulumi.aws.qldb.inputs.StreamKinesisConfigurationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Stream("example", StreamArgs.builder()
/// .ledgerName("existing-ledger-name")
/// .streamName("sample-ledger-stream")
/// .roleArn("sample-role-arn")
/// .inclusiveStartTime("2021-01-01T00:00:00Z")
/// .kinesisConfiguration(StreamKinesisConfigurationArgs.builder()
/// .aggregationEnabled(false)
/// .streamArn("arn:aws:kinesis:us-east-1:xxxxxxxxxxxx:stream/example-kinesis-stream")
/// .build())
/// .tags(Map.of("example", "tag"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:qldb:Stream
/// properties:
/// ledgerName: existing-ledger-name
/// streamName: sample-ledger-stream
/// roleArn: sample-role-arn
/// inclusiveStartTime: 2021-01-01T00:00:00Z
/// kinesisConfiguration:
/// aggregationEnabled: false
/// streamArn: arn:aws:kinesis:us-east-1:xxxxxxxxxxxx:stream/example-kinesis-stream
/// tags:
/// example: tag
/// ```
/// <!--End PulumiCodeChooser -->
class Stream2 extends CustomResource {
  /// The ARN of the QLDB Stream.
  late final Output<String> arn;

  /// The exclusive date and time that specifies when the stream ends. If you don't define this parameter, the stream runs indefinitely until you cancel it. It must be in ISO 8601 date and time format and in Universal Coordinated Time (UTC). For example: `"2019-06-13T21:36:34Z"`.
  late final Output<String?> exclusiveEndTime;

  /// The inclusive start date and time from which to start streaming journal data. This parameter must be in ISO 8601 date and time format and in Universal Coordinated Time (UTC). For example: `"2019-06-13T21:36:34Z"`.  This cannot be in the future and must be before <span pulumi-lang-nodejs="`exclusiveEndTime`" pulumi-lang-dotnet="`ExclusiveEndTime`" pulumi-lang-go="`exclusiveEndTime`" pulumi-lang-python="`exclusive_end_time`" pulumi-lang-yaml="`exclusiveEndTime`" pulumi-lang-java="`exclusiveEndTime`">`exclusive_end_time`</span>.  If you provide a value that is before the ledger's `CreationDateTime`, QLDB effectively defaults it to the ledger's `CreationDateTime`.
  late final Output<String> inclusiveStartTime;

  /// The configuration settings of the Kinesis Data Streams destination for your stream request. Documented below.
  late final Output<StreamKinesisConfiguration> kinesisConfiguration;

  /// The name of the QLDB ledger.
  late final Output<String> ledgerName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a journal stream to write data records to a Kinesis Data Streams resource.
  late final Output<String> roleArn;

  /// The name that you want to assign to the QLDB journal stream. User-defined names can help identify and indicate the purpose of a stream.  Your stream name must be unique among other active streams for a given ledger. Stream names have the same naming constraints as ledger names, as defined in the [Amazon QLDB Developer Guide](https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming).
  late final Output<String> streamName;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Stream2(
    String name, {
    StreamArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:qldb/stream:Stream',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.exclusiveEndTime = registerOutput<String?>('exclusiveEndTime');
    this.inclusiveStartTime = registerOutput<String>('inclusiveStartTime');
    this.kinesisConfiguration =
        registerOutput<StreamKinesisConfiguration>('kinesisConfiguration');
    this.ledgerName = registerOutput<String>('ledgerName');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.streamName = registerOutput<String>('streamName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
