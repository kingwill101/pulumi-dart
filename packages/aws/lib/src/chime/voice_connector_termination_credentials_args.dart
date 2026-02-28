// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'voice_connector_termination_credentials_credential.dart';

/// {@template pulumi_chime_voice_connector_termination_credentials_voice_connector_termination_credentials_args_doc}
/// The set of arguments for VoiceConnectorTerminationCredentials.
/// {@endtemplate}
/// {@macro pulumi_chime_voice_connector_termination_credentials_voice_connector_termination_credentials_args_doc}
class VoiceConnectorTerminationCredentialsArgs {
  /// List of termination SIP credentials.
  final pulumi.Input<List<VoiceConnectorTerminationCredentialsCredential>> credentials;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Chime Voice Connector ID.
  final pulumi.Input<String> voiceConnectorId;

  /// Creates a new [VoiceConnectorTerminationCredentialsArgs].
  /// [credentials] List of termination SIP credentials.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [voiceConnectorId] Amazon Chime Voice Connector ID.
  VoiceConnectorTerminationCredentialsArgs({
    required List<VoiceConnectorTerminationCredentialsCredential> credentials,
    String? region,
    required String voiceConnectorId,
  }) :
      credentials = pulumi.Input.asInput<List<VoiceConnectorTerminationCredentialsCredential>>(credentials),
      region = pulumi.Input.asOptionalInput<String>(region),
      voiceConnectorId = pulumi.Input.asInput<String>(voiceConnectorId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': pulumi.Input.mapInputValue<List<VoiceConnectorTerminationCredentialsCredential>, List<Map<String, dynamic>>>(credentials, (value) => pulumi.Input.encodeList<VoiceConnectorTerminationCredentialsCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'voiceConnectorId': voiceConnectorId,
    };
  }

  factory VoiceConnectorTerminationCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return VoiceConnectorTerminationCredentialsArgs(
      credentials: pulumi.Input.decodeList<VoiceConnectorTerminationCredentialsCredential>(map['credentials'], (value) => VoiceConnectorTerminationCredentialsCredential.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
      voiceConnectorId: map['voiceConnectorId'] as String,
    );
  }
}

