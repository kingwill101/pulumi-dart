import 'package:pulumi/pulumi.dart';
import '../channel_cdi_input_specification/channel_cdi_input_specification.dart';
import '../channel_destination/channel_destination.dart';
import '../channel_encoder_settings/channel_encoder_settings.dart';
import '../channel_input_attachment/channel_input_attachment.dart';
import '../channel_input_specification/channel_input_specification.dart';
import '../channel_maintenance/channel_maintenance.dart';
import '../channel_vpc/channel_vpc.dart';
import 'channel_args2.dart';

/// Resource for managing an AWS MediaLive Channel.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import MediaLive Channel using the `channel_id`. For example:
///
/// ```sh
/// $ pulumi import aws:medialive/channel:Channel example 1234567
/// ```
class Channel2 extends CustomResource {
  /// ARN of the Channel.
  late final Output<String> arn;

  /// Specification of CDI inputs for this channel. See CDI Input Specification for more details.
  late final Output<ChannelCdiInputSpecification?> cdiInputSpecification;

  /// Concise argument description.
  late final Output<String> channelClass;

  /// ID of the Channel.
  late final Output<String> channelId;

  /// Destinations for channel. See Destinations for more details.
  late final Output<List<ChannelDestination>> destinations;

  /// Encoder settings. See Encoder Settings for more details.
  late final Output<ChannelEncoderSettings> encoderSettings;

  /// Input attachments for the channel. See Input Attachments for more details.
  late final Output<List<ChannelInputAttachment>> inputAttachments;

  /// Specification of network and file inputs for the channel.
  late final Output<ChannelInputSpecification> inputSpecification;

  /// The log level to write to Cloudwatch logs.
  late final Output<String> logLevel;

  /// Maintenance settings for this channel. See Maintenance for more details.
  late final Output<ChannelMaintenance> maintenance;

  /// Name of the Channel.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Concise argument description.
  late final Output<String?> roleArn;

  /// Whether to start/stop channel. Default: `false`
  late final Output<bool?> startChannel;

  /// A map of tags to assign to the channel. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// Settings for the VPC outputs. See VPC for more details.
  late final Output<ChannelVpc?> vpc;

  Channel2(
    String name, {
    ChannelArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:medialive/channel:Channel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.cdiInputSpecification =
        registerOutput<ChannelCdiInputSpecification?>('cdiInputSpecification');
    this.channelClass = registerOutput<String>('channelClass');
    this.channelId = registerOutput<String>('channelId');
    this.destinations =
        registerOutput<List<ChannelDestination>>('destinations');
    this.encoderSettings =
        registerOutput<ChannelEncoderSettings>('encoderSettings');
    this.inputAttachments =
        registerOutput<List<ChannelInputAttachment>>('inputAttachments');
    this.inputSpecification =
        registerOutput<ChannelInputSpecification>('inputSpecification');
    this.logLevel = registerOutput<String>('logLevel');
    this.maintenance = registerOutput<ChannelMaintenance>('maintenance');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String?>('roleArn');
    this.startChannel = registerOutput<bool?>('startChannel');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpc = registerOutput<ChannelVpc?>('vpc');
  }
}
