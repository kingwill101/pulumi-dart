// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../channel_cdi_input_specification/channel_cdi_input_specification.dart';
import '../channel_destination/channel_destination.dart';
import '../channel_encoder_settings/channel_encoder_settings.dart';
import '../channel_input_attachment/channel_input_attachment.dart';
import '../channel_input_specification/channel_input_specification.dart';
import '../channel_maintenance/channel_maintenance.dart';
import '../channel_vpc/channel_vpc.dart';

/// The set of arguments for Channel.
class ChannelMedialiveArgs {
  /// Specification of CDI inputs for this channel. See CDI Input Specification for more details.
  final pulumi.Input<ChannelCdiInputSpecification>? cdiInputSpecification;

  /// Concise argument description.
  final pulumi.Input<String> channelClass;

  /// Destinations for channel. See Destinations for more details.
  final pulumi.Input<List<ChannelDestination>> destinations;

  /// Encoder settings. See Encoder Settings for more details.
  final pulumi.Input<ChannelEncoderSettings> encoderSettings;

  /// Input attachments for the channel. See Input Attachments for more details.
  final pulumi.Input<List<ChannelInputAttachment>> inputAttachments;

  /// Specification of network and file inputs for the channel.
  final pulumi.Input<ChannelInputSpecification> inputSpecification;

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

  /// Settings for the VPC outputs. See VPC for more details.
  final pulumi.Input<ChannelVpc>? vpc;

  ChannelMedialiveArgs({
    this.cdiInputSpecification,
    required this.channelClass,
    required this.destinations,
    required this.encoderSettings,
    required this.inputAttachments,
    required this.inputSpecification,
    this.logLevel,
    this.maintenance,
    this.name,
    this.region,
    this.roleArn,
    this.startChannel,
    this.tags,
    this.vpc,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cdiInputSpecificationValue = cdiInputSpecification;
    if (cdiInputSpecificationValue != null) {
      map['cdiInputSpecification'] = pulumi.Input.mapOptionalInputValue<
              ChannelCdiInputSpecification, Map<String, dynamic>>(
          cdiInputSpecificationValue, (value) => value.toMap());
    }
    map['channelClass'] = channelClass;
    map['destinations'] = pulumi.Input.mapInputValue<List<ChannelDestination>,
            List<Map<String, dynamic>>>(
        destinations,
        (value) =>
            pulumi.Input.encodeList<ChannelDestination, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['encoderSettings'] = pulumi.Input.mapInputValue<ChannelEncoderSettings,
        Map<String, dynamic>>(encoderSettings, (value) => value.toMap());
    map['inputAttachments'] = pulumi.Input.mapInputValue<
            List<ChannelInputAttachment>, List<Map<String, dynamic>>>(
        inputAttachments,
        (value) => pulumi.Input.encodeList<ChannelInputAttachment,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['inputSpecification'] = pulumi.Input.mapInputValue<
        ChannelInputSpecification,
        Map<String, dynamic>>(inputSpecification, (value) => value.toMap());
    final logLevelValue = logLevel;
    if (logLevelValue != null) {
      map['logLevel'] = logLevelValue;
    }
    final maintenanceValue = maintenance;
    if (maintenanceValue != null) {
      map['maintenance'] = pulumi.Input.mapOptionalInputValue<
          ChannelMaintenance,
          Map<String, dynamic>>(maintenanceValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    final startChannelValue = startChannel;
    if (startChannelValue != null) {
      map['startChannel'] = startChannelValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcValue = vpc;
    if (vpcValue != null) {
      map['vpc'] =
          pulumi.Input.mapOptionalInputValue<ChannelVpc, Map<String, dynamic>>(
              vpcValue, (value) => value.toMap());
    }
    return map;
  }

  factory ChannelMedialiveArgs.fromMap(Map<String, dynamic> map) {
    return ChannelMedialiveArgs(
      cdiInputSpecification:
          pulumi.Input.asOptionalInput<ChannelCdiInputSpecification>(
              map['cdiInputSpecification']),
      channelClass: pulumi.Input.asInput<String>(map['channelClass']),
      destinations:
          pulumi.Input.asInput<List<ChannelDestination>>(map['destinations']),
      encoderSettings:
          pulumi.Input.asInput<ChannelEncoderSettings>(map['encoderSettings']),
      inputAttachments: pulumi.Input.asInput<List<ChannelInputAttachment>>(
          map['inputAttachments']),
      inputSpecification: pulumi.Input.asInput<ChannelInputSpecification>(
          map['inputSpecification']),
      logLevel: pulumi.Input.asOptionalInput<String>(map['logLevel']),
      maintenance:
          pulumi.Input.asOptionalInput<ChannelMaintenance>(map['maintenance']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asOptionalInput<String>(map['roleArn']),
      startChannel: pulumi.Input.asOptionalInput<bool>(map['startChannel']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpc: pulumi.Input.asOptionalInput<ChannelVpc>(map['vpc']),
    );
  }
}
