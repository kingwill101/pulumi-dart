// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_cluster_key_vault_secrets_provider_secret_identity.dart';

class GetKubernetesClusterKeyVaultSecretsProvider {
  /// A `secret_identity` block as documented below.
  final List<GetKubernetesClusterKeyVaultSecretsProviderSecretIdentity> secretIdentities;
  /// Is secret rotation enabled?
  final bool secretRotationEnabled;
  /// The interval to poll for secret rotation.
  final String secretRotationInterval;

  /// Creates a new [GetKubernetesClusterKeyVaultSecretsProvider].
  /// [secretIdentities] A `secret_identity` block as documented below.
  /// [secretRotationEnabled] Is secret rotation enabled?
  /// [secretRotationInterval] The interval to poll for secret rotation.
  GetKubernetesClusterKeyVaultSecretsProvider({
    required this.secretIdentities,
    required this.secretRotationEnabled,
    required this.secretRotationInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretIdentities': pulumi.Input.encodeList<GetKubernetesClusterKeyVaultSecretsProviderSecretIdentity, Map<String, dynamic>>(secretIdentities, (value) => value.toMap()),
      'secretRotationEnabled': secretRotationEnabled,
      'secretRotationInterval': secretRotationInterval,
    };
  }

  factory GetKubernetesClusterKeyVaultSecretsProvider.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterKeyVaultSecretsProvider(
      secretIdentities: pulumi.Input.decodeList<GetKubernetesClusterKeyVaultSecretsProviderSecretIdentity>(map['secretIdentities'], (value) => GetKubernetesClusterKeyVaultSecretsProviderSecretIdentity.fromMap((value as Map).cast<String, dynamic>())),
      secretRotationEnabled: map['secretRotationEnabled'] as bool,
      secretRotationInterval: map['secretRotationInterval'] as String,
    );
  }
}

