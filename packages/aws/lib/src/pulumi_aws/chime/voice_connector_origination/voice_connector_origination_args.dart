// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../voice_connector_origination_route/voice_connector_origination_route.dart';

/// The set of arguments for VoiceConnectorOrigination.
class VoiceConnectorOriginationArgs {
  /// When origination settings are disabled, inbound calls are not enabled for your Amazon Chime Voice Connector.
  final Input<bool>? disabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Set of call distribution properties defined for your SIP hosts. See route below for more details. Minimum of 1. Maximum of 20.
  final Input<List<VoiceConnectorOriginationRoute>> routes;

  /// The Amazon Chime Voice Connector ID.
  final Input<String> voiceConnectorId;

  VoiceConnectorOriginationArgs({
    this.disabled,
    this.region,
    required this.routes,
    required this.voiceConnectorId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['routes'] = Input.mapInputValue<List<VoiceConnectorOriginationRoute>,
            List<Map<String, dynamic>>>(
        routes,
        (value) => Input.encodeList<VoiceConnectorOriginationRoute,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['voiceConnectorId'] = voiceConnectorId;
    return map;
  }

  factory VoiceConnectorOriginationArgs.fromMap(Map<String, dynamic> map) {
    return VoiceConnectorOriginationArgs(
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      region: Input.asOptionalInput<String>(map['region']),
      routes:
          Input.asInput<List<VoiceConnectorOriginationRoute>>(map['routes']),
      voiceConnectorId: Input.asInput<String>(map['voiceConnectorId']),
    );
  }
}
