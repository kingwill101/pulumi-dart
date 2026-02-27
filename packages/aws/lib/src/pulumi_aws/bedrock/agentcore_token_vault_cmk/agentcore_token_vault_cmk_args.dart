// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../agentcore_token_vault_cmk_kms_configuration/agentcore_token_vault_cmk_kms_configuration.dart';

/// The set of arguments for AgentcoreTokenVaultCmk.
class AgentcoreTokenVaultCmkArgs {
  /// KMS configuration for the token vault. See `kms_configuration` below.
  final pulumi.Input<AgentcoreTokenVaultCmkKmsConfiguration> kmsConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Token vault ID. Defaults to `default`.
  final pulumi.Input<String>? tokenVaultId;

  AgentcoreTokenVaultCmkArgs({
    required this.kmsConfiguration,
    this.region,
    this.tokenVaultId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsConfiguration'] = pulumi.Input.mapInputValue<
        AgentcoreTokenVaultCmkKmsConfiguration,
        Map<String, dynamic>>(kmsConfiguration, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tokenVaultIdValue = tokenVaultId;
    if (tokenVaultIdValue != null) {
      map['tokenVaultId'] = tokenVaultIdValue;
    }
    return map;
  }

  factory AgentcoreTokenVaultCmkArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreTokenVaultCmkArgs(
      kmsConfiguration:
          pulumi.Input.asInput<AgentcoreTokenVaultCmkKmsConfiguration>(
              map['kmsConfiguration']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tokenVaultId: pulumi.Input.asOptionalInput<String>(map['tokenVaultId']),
    );
  }
}
