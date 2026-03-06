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
  const ChannelState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cdiInputSpecification: (() { final guardedValue = map['cdiInputSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelCdiInputSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      channelClass: (() { final guardedValue = map['channelClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      channelId: (() { final guardedValue = map['channelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ChannelDestination>(guardedValue, (value) => ChannelDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      encoderSettings: (() { final guardedValue = map['encoderSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inputAttachments: (() { final guardedValue = map['inputAttachments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ChannelInputAttachment>(guardedValue, (value) => ChannelInputAttachment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inputSpecification: (() { final guardedValue = map['inputSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelInputSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenance: (() { final guardedValue = map['maintenance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelMaintenance.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startChannel: (() { final guardedValue = map['startChannel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpc: (() { final guardedValue = map['vpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelVpc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

