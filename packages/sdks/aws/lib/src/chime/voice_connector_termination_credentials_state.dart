// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'voice_connector_termination_credentials_credential.dart';

/// Input properties used for looking up and filtering VoiceConnectorTerminationCredentials resources.
class VoiceConnectorTerminationCredentialsState {
  /// List of termination SIP credentials.
  final pulumi.Input<List<VoiceConnectorTerminationCredentialsCredential>>?
  credentials;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Amazon Chime Voice Connector ID.
  final pulumi.Input<String>? voiceConnectorId;

  /// Creates a new [VoiceConnectorTerminationCredentialsState].
  /// [credentials] List of termination SIP credentials.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [voiceConnectorId] Amazon Chime Voice Connector ID.
  VoiceConnectorTerminationCredentialsState({
    this.credentials,
    this.region,
    this.voiceConnectorId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials':
          ?pulumi.Input.mapOptionalInputValue<
            List<VoiceConnectorTerminationCredentialsCredential>,
            List<Map<String, dynamic>>
          >(
            credentials,
            (value) =>
                pulumi.Input.encodeList<
                  VoiceConnectorTerminationCredentialsCredential,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
      'voiceConnectorId': ?voiceConnectorId,
    };
  }

  factory VoiceConnectorTerminationCredentialsState.fromMap(
    Map<String, dynamic> map,
  ) {
    return VoiceConnectorTerminationCredentialsState(
      credentials: (() {
        final guardedValue = map['credentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<VoiceConnectorTerminationCredentialsCredential>(
            guardedValue,
            (value) => VoiceConnectorTerminationCredentialsCredential.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      voiceConnectorId: (() {
        final guardedValue = map['voiceConnectorId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
