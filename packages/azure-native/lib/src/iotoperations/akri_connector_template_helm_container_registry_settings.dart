// ignore_for_file: unused_element, unnecessary_cast

import 'akri_connector_template_helm_auth_secret_ref.dart';

/// AkriConnectorTemplateHelmContainerRegistrySettings properties.
class AkriConnectorTemplateHelmContainerRegistrySettings {
  /// Optional reference to a secret in the same namespace to use for pulling the Helm chart.
  final AkriConnectorTemplateHelmAuthSecretRef? authSecretRef;
  /// The registry to use for the Helm chart.
  final String registry;

  /// Creates a new [AkriConnectorTemplateHelmContainerRegistrySettings].
  /// [authSecretRef] Optional reference to a secret in the same namespace to use for pulling the Helm chart.
  /// [registry] The registry to use for the Helm chart.
  AkriConnectorTemplateHelmContainerRegistrySettings({
    this.authSecretRef,
    required this.registry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authSecretRef': ?authSecretRef == null ? null : authSecretRef!.toMap(),
      'registry': registry,
    };
  }

  factory AkriConnectorTemplateHelmContainerRegistrySettings.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateHelmContainerRegistrySettings(
      authSecretRef: map['authSecretRef'] == null ? null : AkriConnectorTemplateHelmAuthSecretRef.fromMap((map['authSecretRef'] as Map).cast<String, dynamic>()),
      registry: map['registry'] as String,
    );
  }
}

