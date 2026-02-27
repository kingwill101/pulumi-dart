import 'package:pulumi/pulumi.dart';
import '../agentcore_token_vault_cmk_kms_configuration/agentcore_token_vault_cmk_kms_configuration.dart';
import 'agentcore_token_vault_cmk_args.dart';

/// Manages the AWS KMS customer master key (CMK) for a token vault.
///
/// > Deletion of this resource will not modify the CMK, only remove the resource from state.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import token vault CMKs using the token vault ID. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreTokenVaultCmk:AgentcoreTokenVaultCmk example "default"
/// ```
class AgentcoreTokenVaultCmk extends CustomResource {
  /// KMS configuration for the token vault. See `kms_configuration` below.
  late final Output<AgentcoreTokenVaultCmkKmsConfiguration> kmsConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Token vault ID. Defaults to `default`.
  late final Output<String> tokenVaultId;

  AgentcoreTokenVaultCmk(
    String name, {
    AgentcoreTokenVaultCmkArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreTokenVaultCmk:AgentcoreTokenVaultCmk',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.kmsConfiguration =
        registerOutput<AgentcoreTokenVaultCmkKmsConfiguration>(
            'kmsConfiguration');
    this.region = registerOutput<String>('region');
    this.tokenVaultId = registerOutput<String>('tokenVaultId');
  }
}
