// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_cdi_input_specification.dart';
import 'channel_destination.dart';
import 'channel_encoder_settings.dart';
import 'channel_input_attachment.dart';
import 'channel_input_specification.dart';
import 'channel_maintenance.dart';
import 'channel_vpc.dart';

/// {@template pulumi_medialive_channel_channel_args_doc}
/// The set of arguments for Channel.
/// {@endtemplate}
/// {@macro pulumi_medialive_channel_channel_args_doc}
class ChannelArgs {
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

  /// Creates a new [ChannelArgs].
  /// [cdiInputSpecification] Specification of CDI inputs for this channel. See CDI Input Specification for more details.
  /// [channelClass] Concise argument description.
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
  /// [vpc] Settings for the VPC outputs. See VPC for more details.
  ChannelArgs({
    ChannelCdiInputSpecification? cdiInputSpecification,
    required String channelClass,
    required List<ChannelDestination> destinations,
    required ChannelEncoderSettings encoderSettings,
    required List<ChannelInputAttachment> inputAttachments,
    required ChannelInputSpecification inputSpecification,
    String? logLevel,
    ChannelMaintenance? maintenance,
    String? name,
    String? region,
    String? roleArn,
    bool? startChannel,
    Map<String, String>? tags,
    ChannelVpc? vpc,
  }) :
      cdiInputSpecification = pulumi.Input.asOptionalInput<ChannelCdiInputSpecification>(cdiInputSpecification),
      channelClass = pulumi.Input.asInput<String>(channelClass),
      destinations = pulumi.Input.asInput<List<ChannelDestination>>(destinations),
      encoderSettings = pulumi.Input.asInput<ChannelEncoderSettings>(encoderSettings),
      inputAttachments = pulumi.Input.asInput<List<ChannelInputAttachment>>(inputAttachments),
      inputSpecification = pulumi.Input.asInput<ChannelInputSpecification>(inputSpecification),
      logLevel = pulumi.Input.asOptionalInput<String>(logLevel),
      maintenance = pulumi.Input.asOptionalInput<ChannelMaintenance>(maintenance),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      startChannel = pulumi.Input.asOptionalInput<bool>(startChannel),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpc = pulumi.Input.asOptionalInput<ChannelVpc>(vpc);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdiInputSpecification': ?pulumi.Input.mapOptionalInputValue<ChannelCdiInputSpecification, Map<String, dynamic>>(cdiInputSpecification, (value) => value.toMap()),
      'channelClass': channelClass,
      'destinations': pulumi.Input.mapInputValue<List<ChannelDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<ChannelDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encoderSettings': pulumi.Input.mapInputValue<ChannelEncoderSettings, Map<String, dynamic>>(encoderSettings, (value) => value.toMap()),
      'inputAttachments': pulumi.Input.mapInputValue<List<ChannelInputAttachment>, List<Map<String, dynamic>>>(inputAttachments, (value) => pulumi.Input.encodeList<ChannelInputAttachment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputSpecification': pulumi.Input.mapInputValue<ChannelInputSpecification, Map<String, dynamic>>(inputSpecification, (value) => value.toMap()),
      'logLevel': ?logLevel,
      'maintenance': ?pulumi.Input.mapOptionalInputValue<ChannelMaintenance, Map<String, dynamic>>(maintenance, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'roleArn': ?roleArn,
      'startChannel': ?startChannel,
      'tags': ?tags,
      'vpc': ?pulumi.Input.mapOptionalInputValue<ChannelVpc, Map<String, dynamic>>(vpc, (value) => value.toMap()),
    };
  }

  factory ChannelArgs.fromMap(Map<String, dynamic> map) {
    return ChannelArgs(
      cdiInputSpecification: map['cdiInputSpecification'] == null ? null : ChannelCdiInputSpecification.fromMap((map['cdiInputSpecification'] as Map).cast<String, dynamic>()),
      channelClass: map['channelClass'] as String,
      destinations: pulumi.Input.decodeList<ChannelDestination>(map['destinations'], (value) => ChannelDestination.fromMap((value as Map).cast<String, dynamic>())),
      encoderSettings: ChannelEncoderSettings.fromMap((map['encoderSettings'] as Map).cast<String, dynamic>()),
      inputAttachments: pulumi.Input.decodeList<ChannelInputAttachment>(map['inputAttachments'], (value) => ChannelInputAttachment.fromMap((value as Map).cast<String, dynamic>())),
      inputSpecification: ChannelInputSpecification.fromMap((map['inputSpecification'] as Map).cast<String, dynamic>()),
      logLevel: map['logLevel'] == null ? null : map['logLevel'] as String,
      maintenance: map['maintenance'] == null ? null : ChannelMaintenance.fromMap((map['maintenance'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      startChannel: map['startChannel'] == null ? null : map['startChannel'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vpc: map['vpc'] == null ? null : ChannelVpc.fromMap((map['vpc'] as Map).cast<String, dynamic>()),
    );
  }
}

