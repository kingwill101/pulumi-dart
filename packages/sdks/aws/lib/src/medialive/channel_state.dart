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
    this.arn,
    this.cdiInputSpecification,
    this.channelClass,
    this.channelId,
    this.destinations,
    this.encoderSettings,
    this.inputAttachments,
    this.inputSpecification,
    this.logLevel,
    this.maintenance,
    this.name,
    this.region,
    this.roleArn,
    this.startChannel,
    this.tags,
    this.tagsAll,
    this.vpc,
  });

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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      cdiInputSpecification: map['cdiInputSpecification'] == null ? null : ((ChannelCdiInputSpecification.fromMap((map['cdiInputSpecification']! as Map).cast<String, dynamic>())).input()).input(),
      channelClass: map['channelClass'] == null ? null : ((map['channelClass'] as String).input()).input(),
      channelId: map['channelId'] == null ? null : ((map['channelId'] as String).input()).input(),
      destinations: map['destinations'] == null ? null : ((pulumi.Input.decodeList<ChannelDestination>(map['destinations']!, (value) => ChannelDestination.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      encoderSettings: map['encoderSettings'] == null ? null : ((ChannelEncoderSettings.fromMap((map['encoderSettings']! as Map).cast<String, dynamic>())).input()).input(),
      inputAttachments: map['inputAttachments'] == null ? null : ((pulumi.Input.decodeList<ChannelInputAttachment>(map['inputAttachments']!, (value) => ChannelInputAttachment.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      inputSpecification: map['inputSpecification'] == null ? null : ((ChannelInputSpecification.fromMap((map['inputSpecification']! as Map).cast<String, dynamic>())).input()).input(),
      logLevel: map['logLevel'] == null ? null : ((map['logLevel'] as String).input()).input(),
      maintenance: map['maintenance'] == null ? null : ((ChannelMaintenance.fromMap((map['maintenance']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleArn: map['roleArn'] == null ? null : ((map['roleArn'] as String).input()).input(),
      startChannel: map['startChannel'] == null ? null : ((map['startChannel'] as bool).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      vpc: map['vpc'] == null ? null : ((ChannelVpc.fromMap((map['vpc']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

