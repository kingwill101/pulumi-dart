import 'package:pulumi/pulumi.dart';
import 'video_stream_args.dart';

/// Provides a Kinesis Video Stream resource. Amazon Kinesis Video Streams makes it easy to securely stream video from connected devices to AWS for analytics, machine learning (ML), playback, and other processing.
///
/// For more details, see the [Amazon Kinesis Documentation](https://aws.amazon.com/documentation/kinesis/).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.kinesis.VideoStream("default", {
/// name: "kinesis-video-stream",
/// dataRetentionInHours: 1,
/// deviceName: "kinesis-video-device-name",
/// mediaType: "video/h264",
/// tags: {
/// Name: "kinesis-video-stream",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.kinesis.VideoStream("default",
/// name="kinesis-video-stream",
/// data_retention_in_hours=1,
/// device_name="kinesis-video-device-name",
/// media_type="video/h264",
/// tags={
/// "Name": "kinesis-video-stream",
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
/// var @default = new Aws.Kinesis.VideoStream("default", new()
/// {
/// Name = "kinesis-video-stream",
/// DataRetentionInHours = 1,
/// DeviceName = "kinesis-video-device-name",
/// MediaType = "video/h264",
/// Tags =
/// {
/// { "Name", "kinesis-video-stream" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kinesis.NewVideoStream(ctx, "default", &kinesis.VideoStreamArgs{
/// Name:                 pulumi.String("kinesis-video-stream"),
/// DataRetentionInHours: pulumi.Int(1),
/// DeviceName:           pulumi.String("kinesis-video-device-name"),
/// MediaType:            pulumi.String("video/h264"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("kinesis-video-stream"),
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
/// import com.pulumi.aws.kinesis.VideoStream;
/// import com.pulumi.aws.kinesis.VideoStreamArgs;
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
/// var default_ = new VideoStream("default", VideoStreamArgs.builder()
/// .name("kinesis-video-stream")
/// .dataRetentionInHours(1)
/// .deviceName("kinesis-video-device-name")
/// .mediaType("video/h264")
/// .tags(Map.of("Name", "kinesis-video-stream"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: aws:kinesis:VideoStream
/// properties:
/// name: kinesis-video-stream
/// dataRetentionInHours: 1
/// deviceName: kinesis-video-device-name
/// mediaType: video/h264
/// tags:
/// Name: kinesis-video-stream
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Kinesis Streams using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:kinesis/videoStream:VideoStream test_stream arn:aws:kinesisvideo:us-west-2:123456789012:stream/pulumi-kinesis-test/1554978910975
/// ```
///
/// [1]: https://aws.amazon.com/documentation/kinesis/
/// [2]: http://www.iana.org/assignments/media-types/media-types.xhtml
/// [3]: https://tools.ietf.org/html/rfc6838#section-4.2
class VideoStream extends CustomResource {
  /// The Amazon Resource Name (ARN) specifying the Stream (same as <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>)
  late final Output<String> arn;

  /// A time stamp that indicates when the stream was created.
  late final Output<String> creationTime;

  /// The number of hours that you want to retain the data in the stream. Kinesis Video Streams retains the data in a data store that is associated with the stream. The default value is <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>, indicating that the stream does not persist data.
  late final Output<int?> dataRetentionInHours;

  /// The name of the device that is writing to the stream. **In the current implementation, Kinesis Video Streams does not use this name.**
  late final Output<String?> deviceName;

  /// The ID of the AWS Key Management Service (AWS KMS) key that you want Kinesis Video Streams to use to encrypt stream data. If no key ID is specified, the default, Kinesis Video-managed key (`aws/kinesisvideo`) is used.
  late final Output<String> kmsKeyId;

  /// The media type of the stream. Consumers of the stream can use this information when processing the stream. For more information about media types, see [Media Types](http://www.iana.org/assignments/media-types/media-types.xhtml). If you choose to specify the MediaType, see [Naming Requirements](https://tools.ietf.org/html/rfc6838#section-4.2) for guidelines.
  late final Output<String?> mediaType;

  /// A name to identify the stream. This is unique to the
  /// AWS account and region the Stream is created in.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The version of the stream.
  late final Output<String> version;

  VideoStream(
    String name, {
    VideoStreamArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:kinesis/videoStream:VideoStream',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.creationTime = registerOutput<String>('creationTime');
    this.dataRetentionInHours = registerOutput<int?>('dataRetentionInHours');
    this.deviceName = registerOutput<String?>('deviceName');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.mediaType = registerOutput<String?>('mediaType');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.version = registerOutput<String>('version');
  }
}
