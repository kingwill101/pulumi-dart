// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connector_template_helm_auth_secret_ref.dart';

/// AkriConnectorTemplateHelmContainerRegistrySettings properties.
class AkriConnectorTemplateHelmContainerRegistrySettings {
  /// Optional reference to a secret in the same namespace to use for pulling the Helm chart.
  final pulumi.Input<AkriConnectorTemplateHelmAuthSecretRef?>? authSecretRef;
  /// The registry to use for the Helm chart.
  final pulumi.Input<String> registry;

  /// Creates a new [AkriConnectorTemplateHelmContainerRegistrySettings].
  /// [authSecretRef] Optional reference to a secret in the same namespace to use for pulling the Helm chart.
  /// [registry] The registry to use for the Helm chart.
  const AkriConnectorTemplateHelmContainerRegistrySettings({
    this.authSecretRef,
    required this.registry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authSecretRef': ?pulumi.Input.mapOptionalInputValue<AkriConnectorTemplateHelmAuthSecretRef, Map<String, dynamic>>(authSecretRef, (value) => value.toMap()),
      'registry': registry,
    };
  }

  factory AkriConnectorTemplateHelmContainerRegistrySettings.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateHelmContainerRegistrySettings(
      authSecretRef: (() { final guardedValue = map['authSecretRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AkriConnectorTemplateHelmAuthSecretRef.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      registry: pulumi.Input.fromValue(map['registry'] as String),
    );
  }
}
