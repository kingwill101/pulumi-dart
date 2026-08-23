import 'package:pulumi/pulumi.dart' as pulumi;
import 'video_stream_args.dart';
import 'video_stream_state.dart';

/// Provides a Kinesis Video Stream resource. Amazon Kinesis Video Streams makes it easy to securely stream video from connected devices to AWS for analytics, machine learning (ML), playback, and other processing.
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
/// const _default = new aws.kinesis.VideoStream("default", {
///     name: "kinesis-video-stream",
///     dataRetentionInHours: 1,
///     deviceName: "kinesis-video-device-name",
///     mediaType: "video/h264",
///     tags: {
///         Name: "kinesis-video-stream",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.kinesis.VideoStream("default",
///     name="kinesis-video-stream",
///     data_retention_in_hours=1,
///     device_name="kinesis-video-device-name",
///     media_type="video/h264",
///     tags={
///         "Name": "kinesis-video-stream",
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
///     var @default = new Aws.Kinesis.VideoStream("default", new()
///     {
///         Name = "kinesis-video-stream",
///         DataRetentionInHours = 1,
///         DeviceName = "kinesis-video-device-name",
///         MediaType = "video/h264",
///         Tags =
///         {
///             { "Name", "kinesis-video-stream" },
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
/// 		_, err := kinesis.NewVideoStream(ctx, "default", &kinesis.VideoStreamArgs{
/// 			Name:                 pulumi.String("kinesis-video-stream"),
/// 			DataRetentionInHours: pulumi.Int(1),
/// 			DeviceName:           pulumi.String("kinesis-video-device-name"),
/// 			MediaType:            pulumi.String("video/h264"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("kinesis-video-stream"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_kinesis_videostream" "default" {
///   name                    = "kinesis-video-stream"
///   data_retention_in_hours = 1
///   device_name             = "kinesis-video-device-name"
///   media_type              = "video/h264"
///   tags = {
///     "Name" = "kinesis-video-stream"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kinesis.VideoStream;
/// import com.pulumi.aws.kinesis.VideoStreamArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var default_ = new VideoStream("default", VideoStreamArgs.builder()
///             .name("kinesis-video-stream")
///             .dataRetentionInHours(1)
///             .deviceName("kinesis-video-device-name")
///             .mediaType("video/h264")
///             .tags(Map.of("Name", "kinesis-video-stream"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:kinesis:VideoStream
///     properties:
///       name: kinesis-video-stream
///       dataRetentionInHours: 1
///       deviceName: kinesis-video-device-name
///       mediaType: video/h264
///       tags:
///         Name: kinesis-video-stream
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Kinesis Streams using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:kinesis/videoStream:VideoStream test_stream arn:aws:kinesisvideo:us-west-2:123456789012:stream/pulumi-kinesis-test/1554978910975
/// ```
class VideoStream extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) specifying the Stream (same as `id`)
  late final pulumi.Output<String> arn;
  /// A time stamp that indicates when the stream was created.
  late final pulumi.Output<String> creationTime;
  /// The number of hours that you want to retain the data in the stream. Kinesis Video Streams retains the data in a data store that is associated with the stream. The default value is `0`, indicating that the stream does not persist data.
  late final pulumi.Output<int?> dataRetentionInHours;
  /// The name of the device that is writing to the stream. **In the current implementation, Kinesis Video Streams does not use this name.**
  late final pulumi.Output<String?> deviceName;
  /// The ID of the AWS Key Management Service (AWS KMS) key that you want Kinesis Video Streams to use to encrypt stream data. If no key ID is specified, the default, Kinesis Video-managed key (`aws/kinesisvideo`) is used.
  late final pulumi.Output<String> kmsKeyId;
  /// The media type of the stream. Consumers of the stream can use this information when processing the stream. For more information about media types, see [Media Types](http://www.iana.org/assignments/media-types/media-types.xhtml). If you choose to specify the MediaType, see [Naming Requirements](https://tools.ietf.org/html/rfc6838#section-4.2) for guidelines.
  late final pulumi.Output<String?> mediaType;
  /// A name to identify the stream. This is unique to the
  /// AWS account and region the Stream is created in.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The version of the stream.
  late final pulumi.Output<String> version;

  /// Creates a new [VideoStream].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VideoStream]. {@macro pulumi_kinesis_video_stream_video_stream_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VideoStream(
    String name, {
    VideoStreamArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kinesis/videoStream:VideoStream',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    creationTime = registerOutput<String>('creationTime');
    dataRetentionInHours = registerOutput<int?>('dataRetentionInHours');
    deviceName = registerOutput<String?>('deviceName');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    mediaType = registerOutput<String?>('mediaType');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    version = registerOutput<String>('version');
  }

  /// Gets an existing [VideoStream] resource's state with the given [name] and [id].
  static VideoStream get(
    String name,
    pulumi.Input<String> id, {
    VideoStreamState? state,
  }) {
    return VideoStream._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VideoStream._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kinesis/videoStream:VideoStream',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    creationTime = registerOutput<String>('creationTime');
    dataRetentionInHours = registerOutput<int?>('dataRetentionInHours');
    deviceName = registerOutput<String?>('deviceName');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    mediaType = registerOutput<String?>('mediaType');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    version = registerOutput<String>('version');
  }
}
