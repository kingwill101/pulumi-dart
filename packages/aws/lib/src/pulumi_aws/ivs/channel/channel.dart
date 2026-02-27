import 'package:pulumi/pulumi.dart';
import 'channel_args.dart';

/// Resource for managing an AWS IVS (Interactive Video) Channel.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the IVS channel.
///
///
/// Using `pulumi import`, import IVS (Interactive Video) Channel using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:ivs/channel:Channel example arn:aws:ivs:us-west-2:326937407773:channel/0Y1lcs4U7jk5
/// ```
class Channel extends CustomResource {
  /// ARN of the Channel.
  late final Output<String> arn;

  /// If `true`, channel is private (enabled for playback authorization).
  late final Output<bool> authorized;

  /// Channel ingest endpoint, part of the definition of an ingest server, used when setting up streaming software.
  late final Output<String> ingestEndpoint;

  /// Channel latency mode. Valid values: `NORMAL`, `LOW`.
  late final Output<String> latencyMode;

  /// Channel name.
  late final Output<String> name;

  /// Channel playback URL.
  late final Output<String> playbackUrl;

  /// Recording configuration ARN.
  late final Output<String> recordingConfigurationArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Channel type, which determines the allowable resolution and bitrate. Valid values: `STANDARD`, `BASIC`.
  late final Output<String> type;

  Channel(
    String name, {
    ChannelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ivs/channel:Channel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.authorized = registerOutput<bool>('authorized');
    this.ingestEndpoint = registerOutput<String>('ingestEndpoint');
    this.latencyMode = registerOutput<String>('latencyMode');
    this.name = registerOutput<String>('name');
    this.playbackUrl = registerOutput<String>('playbackUrl');
    this.recordingConfigurationArn =
        registerOutput<String>('recordingConfigurationArn');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
  }
}
