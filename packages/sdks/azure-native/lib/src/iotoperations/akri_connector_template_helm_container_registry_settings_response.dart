// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connector_template_helm_auth_secret_ref_response.dart';

/// AkriConnectorTemplateHelmContainerRegistrySettings properties.
class AkriConnectorTemplateHelmContainerRegistrySettingsResponse {
  /// Optional reference to a secret in the same namespace to use for pulling the Helm chart.
  final pulumi.Input<AkriConnectorTemplateHelmAuthSecretRefResponse>? authSecretRef;
  /// The registry to use for the Helm chart.
  final pulumi.Input<String> registry;

  /// Creates a new [AkriConnectorTemplateHelmContainerRegistrySettingsResponse].
  /// [authSecretRef] Optional reference to a secret in the same namespace to use for pulling the Helm chart.
  /// [registry] The registry to use for the Helm chart.
  AkriConnectorTemplateHelmContainerRegistrySettingsResponse({
    this.authSecretRef,
    required this.registry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authSecretRef': ?pulumi.Input.mapOptionalInputValue<AkriConnectorTemplateHelmAuthSecretRefResponse, Map<String, dynamic>>(authSecretRef, (value) => value.toMap()),
      'registry': registry,
    };
  }

  factory AkriConnectorTemplateHelmContainerRegistrySettingsResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateHelmContainerRegistrySettingsResponse(
      authSecretRef: map['authSecretRef'] == null ? null : (AkriConnectorTemplateHelmAuthSecretRefResponse.fromMap((map['authSecretRef']! as Map).cast<String, dynamic>())).input(),
      registry: (map['registry'] as String).input(),
    );
  }
}

