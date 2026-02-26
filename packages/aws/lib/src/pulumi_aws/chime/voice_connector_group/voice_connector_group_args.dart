// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../voice_connector_group_connector/voice_connector_group_connector.dart';

/// The set of arguments for VoiceConnectorGroup.
class VoiceConnectorGroupArgs {
  /// The Amazon Chime Voice Connectors to route inbound calls to.
  final Input<List<VoiceConnectorGroupConnector>>? connectors;

  /// The name of the Amazon Chime Voice Connector group.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  VoiceConnectorGroupArgs({
    this.connectors,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectorsValue = connectors;
    if (connectorsValue != null) {
      map['connectors'] = Input.mapOptionalInputValue<
              List<VoiceConnectorGroupConnector>, List<Map<String, dynamic>>>(
          connectorsValue,
          (value) => Input.encodeList<VoiceConnectorGroupConnector,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory VoiceConnectorGroupArgs.fromMap(Map<String, dynamic> map) {
    return VoiceConnectorGroupArgs(
      connectors: Input.asOptionalInput<List<VoiceConnectorGroupConnector>>(
          map['connectors']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
