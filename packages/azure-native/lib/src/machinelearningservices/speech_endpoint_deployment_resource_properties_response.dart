// ignore_for_file: unused_element, unnecessary_cast

import 'cognitive_services_sku_response.dart';
import 'endpoint_deployment_model_response.dart';

class SpeechEndpointDeploymentResourcePropertiesResponse {
  /// The failure reason if the creation failed.
  final String? failureReason;
  /// Model used for the endpoint deployment.
  final EndpointDeploymentModelResponse model;
  /// Read-only provision state status property.
  final String provisioningState;
  /// The name of RAI policy.
  final String? raiPolicyName;
  final CognitiveServicesSkuResponse? sku;
  /// Kind of the deployment.
  /// Expected value is 'Azure.Speech'.
  final String type;
  /// Deployment model version upgrade option.
  final String? versionUpgradeOption;

  /// Creates a new [SpeechEndpointDeploymentResourcePropertiesResponse].
  /// [failureReason] The failure reason if the creation failed.
  /// [model] Model used for the endpoint deployment.
  /// [provisioningState] Read-only provision state status property.
  /// [raiPolicyName] The name of RAI policy.
  /// [sku] Optional.
  /// [type] Kind of the deployment.
  /// [versionUpgradeOption] Deployment model version upgrade option.
  SpeechEndpointDeploymentResourcePropertiesResponse({
    this.failureReason,
    required this.model,
    required this.provisioningState,
    this.raiPolicyName,
    this.sku,
    required this.type,
    this.versionUpgradeOption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureReason': ?failureReason,
      'model': model.toMap(),
      'provisioningState': provisioningState,
      'raiPolicyName': ?raiPolicyName,
      'sku': ?sku == null ? null : sku!.toMap(),
      'type': type,
      'versionUpgradeOption': ?versionUpgradeOption,
    };
  }

  factory SpeechEndpointDeploymentResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SpeechEndpointDeploymentResourcePropertiesResponse(
      failureReason: map['failureReason'] == null ? null : map['failureReason'] as String,
      model: EndpointDeploymentModelResponse.fromMap((map['model'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      raiPolicyName: map['raiPolicyName'] == null ? null : map['raiPolicyName'] as String,
      sku: map['sku'] == null ? null : CognitiveServicesSkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      versionUpgradeOption: map['versionUpgradeOption'] == null ? null : map['versionUpgradeOption'] as String,
    );
  }
}

