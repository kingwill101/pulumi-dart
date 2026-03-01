// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'voice_connector_group_connector.dart';

/// {@template pulumi_chime_voice_connector_group_voice_connector_group_args_doc}
/// The set of arguments for VoiceConnectorGroup.
/// {@endtemplate}
/// {@macro pulumi_chime_voice_connector_group_voice_connector_group_args_doc}
class VoiceConnectorGroupArgs {
  /// The Amazon Chime Voice Connectors to route inbound calls to.
  final pulumi.Input<List<VoiceConnectorGroupConnector>>? connectors;

  /// The name of the Amazon Chime Voice Connector group.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [VoiceConnectorGroupArgs].
  /// [connectors] The Amazon Chime Voice Connectors to route inbound calls to.
  /// [name] The name of the Amazon Chime Voice Connector group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  VoiceConnectorGroupArgs({
    List<VoiceConnectorGroupConnector>? connectors,
    String? name,
    String? region,
  }) : connectors =
           pulumi.Input.asOptionalInput<List<VoiceConnectorGroupConnector>>(
             connectors,
           ),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectors':
          ?pulumi.Input.mapOptionalInputValue<
            List<VoiceConnectorGroupConnector>,
            List<Map<String, dynamic>>
          >(
            connectors,
            (value) =>
                pulumi.Input.encodeList<
                  VoiceConnectorGroupConnector,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
      'region': ?region,
    };
  }

  factory VoiceConnectorGroupArgs.fromMap(Map<String, dynamic> map) {
    return VoiceConnectorGroupArgs(
      connectors: map['connectors'] == null
          ? null
          : pulumi.Input.decodeList<VoiceConnectorGroupConnector>(
              map['connectors'],
              (value) => VoiceConnectorGroupConnector.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
