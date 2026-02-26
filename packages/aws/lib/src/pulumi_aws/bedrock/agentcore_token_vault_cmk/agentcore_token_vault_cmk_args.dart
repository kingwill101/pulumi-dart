// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agentcore_token_vault_cmk_kms_configuration/agentcore_token_vault_cmk_kms_configuration.dart';

/// The set of arguments for AgentcoreTokenVaultCmk.
class AgentcoreTokenVaultCmkArgs {
  /// KMS configuration for the token vault. See <span pulumi-lang-nodejs="`kmsConfiguration`" pulumi-lang-dotnet="`KmsConfiguration`" pulumi-lang-go="`kmsConfiguration`" pulumi-lang-python="`kms_configuration`" pulumi-lang-yaml="`kmsConfiguration`" pulumi-lang-java="`kmsConfiguration`">`kms_configuration`</span> below.
  final Input<AgentcoreTokenVaultCmkKmsConfiguration> kmsConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Token vault ID. Defaults to <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>.
  final Input<String>? tokenVaultId;

  AgentcoreTokenVaultCmkArgs({
    required this.kmsConfiguration,
    this.region,
    this.tokenVaultId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsConfiguration'] = Input.mapInputValue<
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
      kmsConfiguration: Input.asInput<AgentcoreTokenVaultCmkKmsConfiguration>(
          map['kmsConfiguration']),
      region: Input.asOptionalInput<String>(map['region']),
      tokenVaultId: Input.asOptionalInput<String>(map['tokenVaultId']),
    );
  }
}
