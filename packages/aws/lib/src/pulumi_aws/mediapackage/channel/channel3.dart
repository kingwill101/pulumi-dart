import 'package:pulumi/pulumi.dart';
import '../channel_hls_ingest/channel_hls_ingest.dart';
import 'channel_args3.dart';

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
class Channel3 extends CustomResource {
  /// The ARN of the channel
  late final Output<String> arn;

  /// A unique identifier describing the channel
  late final Output<String> channelId;

  /// A description of the channel
  late final Output<String> description;

  /// A single item list of HLS ingest information
  late final Output<List<ChannelHlsIngest>> hlsIngests;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Channel3(
    String name, {
    ChannelArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:mediapackage/channel:Channel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
