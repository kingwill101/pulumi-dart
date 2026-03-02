// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'voice_connector_group_connector.dart';

/// Input properties used for looking up and filtering VoiceConnectorGroup resources.
class VoiceConnectorGroupState {
  /// The Amazon Chime Voice Connectors to route inbound calls to.
  final pulumi.Input<List<VoiceConnectorGroupConnector>>? connectors;
  /// The name of the Amazon Chime Voice Connector group.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [VoiceConnectorGroupState].
  /// [connectors] The Amazon Chime Voice Connectors to route inbound calls to.
  /// [name] The name of the Amazon Chime Voice Connector group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  VoiceConnectorGroupState({
    this.connectors,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectors': ?pulumi.Input.mapOptionalInputValue<List<VoiceConnectorGroupConnector>, List<Map<String, dynamic>>>(connectors, (value) => pulumi.Input.encodeList<VoiceConnectorGroupConnector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
    };
  }

  factory VoiceConnectorGroupState.fromMap(Map<String, dynamic> map) {
    return VoiceConnectorGroupState(
      connectors: map['connectors'] == null ? null : (pulumi.Input.decodeList<VoiceConnectorGroupConnector>(map['connectors'], (value) => VoiceConnectorGroupConnector.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

