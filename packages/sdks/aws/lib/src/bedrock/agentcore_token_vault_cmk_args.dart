// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_token_vault_cmk_kms_configuration.dart';

/// {@template pulumi_bedrock_agentcore_token_vault_cmk_agentcore_token_vault_cmk_args_doc}
/// The set of arguments for AgentcoreTokenVaultCmk.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agentcore_token_vault_cmk_agentcore_token_vault_cmk_args_doc}
class AgentcoreTokenVaultCmkArgs {
  /// KMS configuration for the token vault. See `kms_configuration` below.
  final pulumi.Input<AgentcoreTokenVaultCmkKmsConfiguration> kmsConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Token vault ID. Defaults to `default`.
  final pulumi.Input<String>? tokenVaultId;

  /// Creates a new [AgentcoreTokenVaultCmkArgs].
  /// [kmsConfiguration] KMS configuration for the token vault. See `kms_configuration` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tokenVaultId] Token vault ID. Defaults to `default`.
  const AgentcoreTokenVaultCmkArgs({
    required this.kmsConfiguration,
    this.region,
    this.tokenVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsConfiguration': pulumi.Input.mapInputValue<AgentcoreTokenVaultCmkKmsConfiguration, Map<String, dynamic>>(kmsConfiguration, (value) => value.toMap()),
      'region': ?region,
      'tokenVaultId': ?tokenVaultId,
    };
  }

  factory AgentcoreTokenVaultCmkArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreTokenVaultCmkArgs(
      kmsConfiguration: pulumi.Input.fromValue(AgentcoreTokenVaultCmkKmsConfiguration.fromMap((map['kmsConfiguration']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenVaultId: (() { final guardedValue = map['tokenVaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

