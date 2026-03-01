// ignore_for_file: unused_element, unnecessary_cast

import 'cognitive_services_sku.dart';
import 'endpoint_deployment_model.dart';

class ContentSafetyEndpointDeploymentResourceProperties {
  /// The failure reason if the creation failed.
  final String? failureReason;
  /// Model used for the endpoint deployment.
  final EndpointDeploymentModel model;
  /// The name of RAI policy.
  final String? raiPolicyName;
  final CognitiveServicesSku? sku;
  /// Kind of the deployment.
  /// Expected value is 'Azure.ContentSafety'.
  final String type;
  /// Deployment model version upgrade option.
  final String? versionUpgradeOption;

  /// Creates a new [ContentSafetyEndpointDeploymentResourceProperties].
  /// [failureReason] The failure reason if the creation failed.
  /// [model] Model used for the endpoint deployment.
  /// [raiPolicyName] The name of RAI policy.
  /// [sku] Optional.
  /// [type] Kind of the deployment.
  /// [versionUpgradeOption] Deployment model version upgrade option.
  ContentSafetyEndpointDeploymentResourceProperties({
    this.failureReason,
    required this.model,
    this.raiPolicyName,
    this.sku,
    required this.type,
    this.versionUpgradeOption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureReason': ?failureReason,
      'model': model.toMap(),
      'raiPolicyName': ?raiPolicyName,
      'sku': ?sku == null ? null : sku!.toMap(),
      'type': type,
      'versionUpgradeOption': ?versionUpgradeOption,
    };
  }

  factory ContentSafetyEndpointDeploymentResourceProperties.fromMap(Map<String, dynamic> map) {
    return ContentSafetyEndpointDeploymentResourceProperties(
      failureReason: map['failureReason'] == null ? null : map['failureReason'] as String,
      model: EndpointDeploymentModel.fromMap((map['model'] as Map).cast<String, dynamic>()),
      raiPolicyName: map['raiPolicyName'] == null ? null : map['raiPolicyName'] as String,
      sku: map['sku'] == null ? null : CognitiveServicesSku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      versionUpgradeOption: map['versionUpgradeOption'] == null ? null : map['versionUpgradeOption'] as String,
    );
  }
}

