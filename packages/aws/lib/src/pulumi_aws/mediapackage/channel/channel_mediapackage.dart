import 'package:pulumi/pulumi.dart' as pulumi;
import '../channel_hls_ingest/channel_hls_ingest.dart';
import 'channel_mediapackage_args.dart';

/// Provides an AWS Elemental MediaPackage Channel.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Media Package Channels using the channel ID. For example:
///
/// ```sh
/// $ pulumi import aws:mediapackage/channel:Channel kittens kittens-channel
/// ```
class ChannelMediapackage extends pulumi.CustomResource {
  /// The ARN of the channel
  late final pulumi.Output<String> arn;

  /// A unique identifier describing the channel
  late final pulumi.Output<String> channelId;

  /// A description of the channel
  late final pulumi.Output<String> description;

  /// A single item list of HLS ingest information
  late final pulumi.Output<List<ChannelHlsIngest>> hlsIngests;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ChannelMediapackage(
    String name, {
    ChannelMediapackageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mediapackage/channel:Channel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.channelId = registerOutput<String>('channelId');
    this.description = registerOutput<String>('description');
    this.hlsIngests = registerOutput<List<ChannelHlsIngest>>('hlsIngests');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
