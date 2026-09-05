// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_token_vault_cmk_kms_configuration.dart';

/// Input properties used for looking up and filtering AgentcoreTokenVaultCmk resources.
class AgentcoreTokenVaultCmkState {
  /// KMS configuration for the token vault. See `kmsConfiguration` below.
  final pulumi.Input<AgentcoreTokenVaultCmkKmsConfiguration?>? kmsConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Token vault ID. Defaults to `default`.
  final pulumi.Input<String?>? tokenVaultId;

  /// Creates a new [AgentcoreTokenVaultCmkState].
  /// [kmsConfiguration] KMS configuration for the token vault. See `kmsConfiguration` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tokenVaultId] Token vault ID. Defaults to `default`.
  const AgentcoreTokenVaultCmkState({
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
      kmsConfiguration: (() { final guardedValue = map['kmsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreTokenVaultCmkKmsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenVaultId: (() { final guardedValue = map['tokenVaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
