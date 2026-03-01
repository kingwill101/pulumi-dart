// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_cdi_input_specification.dart';
import 'channel_destination.dart';
import 'channel_encoder_settings.dart';
import 'channel_input_attachment.dart';
import 'channel_input_specification.dart';
import 'channel_maintenance.dart';
import 'channel_vpc.dart';

/// Input properties used for looking up and filtering Channel resources.
class ChannelState {
  /// ARN of the Channel.
  final pulumi.Input<String>? arn;
  /// Specification of CDI inputs for this channel. See CDI Input Specification for more details.
  final pulumi.Input<ChannelCdiInputSpecification>? cdiInputSpecification;
  /// Concise argument description.
  final pulumi.Input<String>? channelClass;
  /// ID of the Channel.
  final pulumi.Input<String>? channelId;
  /// Destinations for channel. See Destinations for more details.
  final pulumi.Input<List<ChannelDestination>>? destinations;
  /// Encoder settings. See Encoder Settings for more details.
  final pulumi.Input<ChannelEncoderSettings>? encoderSettings;
  /// Input attachments for the channel. See Input Attachments for more details.
  final pulumi.Input<List<ChannelInputAttachment>>? inputAttachments;
  /// Specification of network and file inputs for the channel.
  final pulumi.Input<ChannelInputSpecification>? inputSpecification;
  /// The log level to write to Cloudwatch logs.
  final pulumi.Input<String>? logLevel;
  /// Maintenance settings for this channel. See Maintenance for more details.
  final pulumi.Input<ChannelMaintenance>? maintenance;
  /// Name of the Channel.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Concise argument description.
  final pulumi.Input<String>? roleArn;
  /// Whether to start/stop channel. Default: `false`
  final pulumi.Input<bool>? startChannel;
  /// A map of tags to assign to the channel. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Settings for the VPC outputs. See VPC for more details.
  final pulumi.Input<ChannelVpc>? vpc;

  /// Creates a new [ChannelState].
  /// [arn] ARN of the Channel.
  /// [cdiInputSpecification] Specification of CDI inputs for this channel. See CDI Input Specification for more details.
  /// [channelClass] Concise argument description.
  /// [channelId] ID of the Channel.
  /// [destinations] Destinations for channel. See Destinations for more details.
  /// [encoderSettings] Encoder settings. See Encoder Settings for more details.
  /// [inputAttachments] Input attachments for the channel. See Input Attachments for more details.
  /// [inputSpecification] Specification of network and file inputs for the channel.
  /// [logLevel] The log level to write to Cloudwatch logs.
  /// [maintenance] Maintenance settings for this channel. See Maintenance for more details.
  /// [name] Name of the Channel.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] Concise argument description.
  /// [startChannel] Whether to start/stop channel. Default: `false`
  /// [tags] A map of tags to assign to the channel. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [vpc] Settings for the VPC outputs. See VPC for more details.
  ChannelState({
    pulumi.Output<String>? arn,
    pulumi.Output<ChannelCdiInputSpecification>? cdiInputSpecification,
    pulumi.Output<String>? channelClass,
    pulumi.Output<String>? channelId,
    pulumi.Output<List<ChannelDestination>>? destinations,
    pulumi.Output<ChannelEncoderSettings>? encoderSettings,
    pulumi.Output<List<ChannelInputAttachment>>? inputAttachments,
    pulumi.Output<ChannelInputSpecification>? inputSpecification,
    pulumi.Output<String>? logLevel,
    pulumi.Output<ChannelMaintenance>? maintenance,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<bool>? startChannel,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ChannelVpc>? vpc,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      cdiInputSpecification = pulumi.Input.asOptionalInput<ChannelCdiInputSpecification>(cdiInputSpecification),
      channelClass = pulumi.Input.asOptionalInput<String>(channelClass),
      channelId = pulumi.Input.asOptionalInput<String>(channelId),
      destinations = pulumi.Input.asOptionalInput<List<ChannelDestination>>(destinations),
      encoderSettings = pulumi.Input.asOptionalInput<ChannelEncoderSettings>(encoderSettings),
      inputAttachments = pulumi.Input.asOptionalInput<List<ChannelInputAttachment>>(inputAttachments),
      inputSpecification = pulumi.Input.asOptionalInput<ChannelInputSpecification>(inputSpecification),
      logLevel = pulumi.Input.asOptionalInput<String>(logLevel),
      maintenance = pulumi.Input.asOptionalInput<ChannelMaintenance>(maintenance),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      startChannel = pulumi.Input.asOptionalInput<bool>(startChannel),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpc = pulumi.Input.asOptionalInput<ChannelVpc>(vpc);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'cdiInputSpecification': ?pulumi.Input.mapOptionalInputValue<ChannelCdiInputSpecification, Map<String, dynamic>>(cdiInputSpecification, (value) => value.toMap()),
      'channelClass': ?channelClass,
      'channelId': ?channelId,
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<ChannelDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<ChannelDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encoderSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettings, Map<String, dynamic>>(encoderSettings, (value) => value.toMap()),
      'inputAttachments': ?pulumi.Input.mapOptionalInputValue<List<ChannelInputAttachment>, List<Map<String, dynamic>>>(inputAttachments, (value) => pulumi.Input.encodeList<ChannelInputAttachment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputSpecification': ?pulumi.Input.mapOptionalInputValue<ChannelInputSpecification, Map<String, dynamic>>(inputSpecification, (value) => value.toMap()),
      'logLevel': ?logLevel,
      'maintenance': ?pulumi.Input.mapOptionalInputValue<ChannelMaintenance, Map<String, dynamic>>(maintenance, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'roleArn': ?roleArn,
      'startChannel': ?startChannel,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpc': ?pulumi.Input.mapOptionalInputValue<ChannelVpc, Map<String, dynamic>>(vpc, (value) => value.toMap()),
    };
  }

  factory ChannelState.fromMap(Map<String, dynamic> map) {
    return ChannelState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      cdiInputSpecification: map['cdiInputSpecification'] == null ? null : pulumi.Output.create<ChannelCdiInputSpecification>(ChannelCdiInputSpecification.fromMap((map['cdiInputSpecification'] as Map).cast<String, dynamic>())),
      channelClass: map['channelClass'] == null ? null : pulumi.Output.create<String>(map['channelClass'] as String),
      channelId: map['channelId'] == null ? null : pulumi.Output.create<String>(map['channelId'] as String),
      destinations: map['destinations'] == null ? null : pulumi.Output.create<List<ChannelDestination>>(pulumi.Input.decodeList<ChannelDestination>(map['destinations'], (value) => ChannelDestination.fromMap((value as Map).cast<String, dynamic>()))),
      encoderSettings: map['encoderSettings'] == null ? null : pulumi.Output.create<ChannelEncoderSettings>(ChannelEncoderSettings.fromMap((map['encoderSettings'] as Map).cast<String, dynamic>())),
      inputAttachments: map['inputAttachments'] == null ? null : pulumi.Output.create<List<ChannelInputAttachment>>(pulumi.Input.decodeList<ChannelInputAttachment>(map['inputAttachments'], (value) => ChannelInputAttachment.fromMap((value as Map).cast<String, dynamic>()))),
      inputSpecification: map['inputSpecification'] == null ? null : pulumi.Output.create<ChannelInputSpecification>(ChannelInputSpecification.fromMap((map['inputSpecification'] as Map).cast<String, dynamic>())),
      logLevel: map['logLevel'] == null ? null : pulumi.Output.create<String>(map['logLevel'] as String),
      maintenance: map['maintenance'] == null ? null : pulumi.Output.create<ChannelMaintenance>(ChannelMaintenance.fromMap((map['maintenance'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      startChannel: map['startChannel'] == null ? null : pulumi.Output.create<bool>(map['startChannel'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpc: map['vpc'] == null ? null : pulumi.Output.create<ChannelVpc>(ChannelVpc.fromMap((map['vpc'] as Map).cast<String, dynamic>())),
    );
  }
}

