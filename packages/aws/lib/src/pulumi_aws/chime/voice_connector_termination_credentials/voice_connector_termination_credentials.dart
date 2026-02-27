import 'package:pulumi/pulumi.dart' as pulumi;
import '../voice_connector_termination_credentials_credential/voice_connector_termination_credentials_credential.dart';
import 'voice_connector_termination_credentials_args.dart';

/// Adds termination SIP credentials for the specified Amazon Chime Voice Connector.
///
/// > **Note:** Voice Connector Termination Credentials requires a Voice Connector Termination to be present. Use of `depends_on` (as shown below) is recommended to avoid race conditions.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Chime Voice Connector Termination Credentials using the `voice_connector_id`. For example:
///
/// ```sh
/// $ pulumi import aws:chime/voiceConnectorTerminationCredentials:VoiceConnectorTerminationCredentials default abcdef1ghij2klmno3pqr4
/// ```
class VoiceConnectorTerminationCredentials extends pulumi.CustomResource {
  /// List of termination SIP credentials.
  late final pulumi.Output<List<VoiceConnectorTerminationCredentialsCredential>>
      credentials;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Amazon Chime Voice Connector ID.
  late final pulumi.Output<String> voiceConnectorId;

  VoiceConnectorTerminationCredentials(
    String name, {
    VoiceConnectorTerminationCredentialsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chime/voiceConnectorTerminationCredentials:VoiceConnectorTerminationCredentials',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.credentials =
        registerOutput<List<VoiceConnectorTerminationCredentialsCredential>>(
            'credentials');
    this.region = registerOutput<String>('region');
    this.voiceConnectorId = registerOutput<String>('voiceConnectorId');
  }
}
