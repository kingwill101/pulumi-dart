// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'voice_connector_origination_route.dart';

/// {@template pulumi_chime_voice_connector_origination_voice_connector_origination_args_doc}
/// The set of arguments for VoiceConnectorOrigination.
/// {@endtemplate}
/// {@macro pulumi_chime_voice_connector_origination_voice_connector_origination_args_doc}
class VoiceConnectorOriginationArgs {
  /// When origination settings are disabled, inbound calls are not enabled for your Amazon Chime Voice Connector.
  final pulumi.Input<bool>? disabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Set of call distribution properties defined for your SIP hosts. See route below for more details. Minimum of 1. Maximum of 20.
  final pulumi.Input<List<VoiceConnectorOriginationRoute>> routes;
  /// The Amazon Chime Voice Connector ID.
  final pulumi.Input<String> voiceConnectorId;

  /// Creates a new [VoiceConnectorOriginationArgs].
  /// [disabled] When origination settings are disabled, inbound calls are not enabled for your Amazon Chime Voice Connector.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routes] Set of call distribution properties defined for your SIP hosts. See route below for more details. Minimum of 1. Maximum of 20.
  /// [voiceConnectorId] The Amazon Chime Voice Connector ID.
  VoiceConnectorOriginationArgs({
    this.disabled,
    this.region,
    required this.routes,
    required this.voiceConnectorId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'region': ?region,
      'routes': pulumi.Input.mapInputValue<List<VoiceConnectorOriginationRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<VoiceConnectorOriginationRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'voiceConnectorId': voiceConnectorId,
    };
  }

  factory VoiceConnectorOriginationArgs.fromMap(Map<String, dynamic> map) {
    return VoiceConnectorOriginationArgs(
      disabled: map['disabled'] == null ? null : (map['disabled'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      routes: (pulumi.Input.decodeList<VoiceConnectorOriginationRoute>(map['routes'], (value) => VoiceConnectorOriginationRoute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      voiceConnectorId: (map['voiceConnectorId'] as String).input(),
    );
  }
}

