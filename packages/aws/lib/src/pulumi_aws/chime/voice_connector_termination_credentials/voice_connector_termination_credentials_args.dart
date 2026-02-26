// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../voice_connector_termination_credentials_credential/voice_connector_termination_credentials_credential.dart';

/// The set of arguments for VoiceConnectorTerminationCredentials.
class VoiceConnectorTerminationCredentialsArgs {
  /// List of termination SIP credentials.
  final Input<List<VoiceConnectorTerminationCredentialsCredential>> credentials;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Amazon Chime Voice Connector ID.
  final Input<String> voiceConnectorId;

  VoiceConnectorTerminationCredentialsArgs({
    required this.credentials,
    this.region,
    required this.voiceConnectorId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['credentials'] = Input.mapInputValue<
            List<VoiceConnectorTerminationCredentialsCredential>,
            List<Map<String, dynamic>>>(
        credentials,
        (value) => Input.encodeList<
            VoiceConnectorTerminationCredentialsCredential,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['voiceConnectorId'] = voiceConnectorId;
    return map;
  }

  factory VoiceConnectorTerminationCredentialsArgs.fromMap(
      Map<String, dynamic> map) {
    return VoiceConnectorTerminationCredentialsArgs(
      credentials:
          Input.asInput<List<VoiceConnectorTerminationCredentialsCredential>>(
              map['credentials']),
      region: Input.asOptionalInput<String>(map['region']),
      voiceConnectorId: Input.asInput<String>(map['voiceConnectorId']),
    );
  }
}
