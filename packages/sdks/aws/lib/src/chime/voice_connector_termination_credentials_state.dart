// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'voice_connector_termination_credentials_credential.dart';

/// Input properties used for looking up and filtering VoiceConnectorTerminationCredentials resources.
class VoiceConnectorTerminationCredentialsState {
  /// List of termination SIP credentials.
  final pulumi.Input<List<VoiceConnectorTerminationCredentialsCredential>>? credentials;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Chime Voice Connector ID.
  final pulumi.Input<String>? voiceConnectorId;

  /// Creates a new [VoiceConnectorTerminationCredentialsState].
  /// [credentials] List of termination SIP credentials.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [voiceConnectorId] Amazon Chime Voice Connector ID.
  VoiceConnectorTerminationCredentialsState({
    pulumi.Output<List<VoiceConnectorTerminationCredentialsCredential>>? credentials,
    pulumi.Output<String>? region,
    pulumi.Output<String>? voiceConnectorId,
  }) :
      credentials = pulumi.Input.asOptionalInput<List<VoiceConnectorTerminationCredentialsCredential>>(credentials),
      region = pulumi.Input.asOptionalInput<String>(region),
      voiceConnectorId = pulumi.Input.asOptionalInput<String>(voiceConnectorId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': ?pulumi.Input.mapOptionalInputValue<List<VoiceConnectorTerminationCredentialsCredential>, List<Map<String, dynamic>>>(credentials, (value) => pulumi.Input.encodeList<VoiceConnectorTerminationCredentialsCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'voiceConnectorId': ?voiceConnectorId,
    };
  }

  factory VoiceConnectorTerminationCredentialsState.fromMap(Map<String, dynamic> map) {
    return VoiceConnectorTerminationCredentialsState(
      credentials: map['credentials'] == null ? null : pulumi.Output.create<List<VoiceConnectorTerminationCredentialsCredential>>(pulumi.Input.decodeList<VoiceConnectorTerminationCredentialsCredential>(map['credentials'], (value) => VoiceConnectorTerminationCredentialsCredential.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      voiceConnectorId: map['voiceConnectorId'] == null ? null : pulumi.Output.create<String>(map['voiceConnectorId'] as String),
    );
  }
}

