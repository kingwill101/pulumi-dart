// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_token_vault_cmk_kms_configuration.dart';

/// Input properties used for looking up and filtering AgentcoreTokenVaultCmk resources.
class AgentcoreTokenVaultCmkState {
  /// KMS configuration for the token vault. See `kms_configuration` below.
  final pulumi.Input<AgentcoreTokenVaultCmkKmsConfiguration>? kmsConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Token vault ID. Defaults to `default`.
  final pulumi.Input<String>? tokenVaultId;

  /// Creates a new [AgentcoreTokenVaultCmkState].
  /// [kmsConfiguration] KMS configuration for the token vault. See `kms_configuration` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tokenVaultId] Token vault ID. Defaults to `default`.
  AgentcoreTokenVaultCmkState({
    this.kmsConfiguration,
    this.region,
    this.tokenVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreTokenVaultCmkKmsConfiguration, Map<String, dynamic>>(kmsConfiguration, (value) => value.toMap()),
      'region': ?region,
      'tokenVaultId': ?tokenVaultId,
    };
  }

  factory AgentcoreTokenVaultCmkState.fromMap(Map<String, dynamic> map) {
    return AgentcoreTokenVaultCmkState(
      kmsConfiguration: map['kmsConfiguration'] == null ? null : (AgentcoreTokenVaultCmkKmsConfiguration.fromMap((map['kmsConfiguration'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tokenVaultId: map['tokenVaultId'] == null ? null : (map['tokenVaultId'] as String).input(),
    );
  }
}

