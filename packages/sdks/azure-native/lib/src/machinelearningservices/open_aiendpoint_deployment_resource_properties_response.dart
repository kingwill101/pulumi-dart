// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cognitive_services_sku_response.dart';
import 'endpoint_deployment_model_response.dart';

class OpenAIEndpointDeploymentResourcePropertiesResponse {
  /// The failure reason if the creation failed.
  final pulumi.Input<String>? failureReason;
  /// Model used for the endpoint deployment.
  final pulumi.Input<EndpointDeploymentModelResponse> model;
  /// Read-only provision state status property.
  final pulumi.Input<String> provisioningState;
  /// The name of RAI policy.
  final pulumi.Input<String>? raiPolicyName;
  final pulumi.Input<CognitiveServicesSkuResponse>? sku;
  /// Kind of the deployment.
  /// Expected value is 'Azure.OpenAI'.
  final pulumi.Input<String> type;
  /// Deployment model version upgrade option.
  final pulumi.Input<String>? versionUpgradeOption;

  /// Creates a new [OpenAIEndpointDeploymentResourcePropertiesResponse].
  /// [failureReason] The failure reason if the creation failed.
  /// [model] Model used for the endpoint deployment.
  /// [provisioningState] Read-only provision state status property.
  /// [raiPolicyName] The name of RAI policy.
  /// [sku] Optional.
  /// [type] Kind of the deployment.
  /// [versionUpgradeOption] Deployment model version upgrade option.
  OpenAIEndpointDeploymentResourcePropertiesResponse({
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
      'model': pulumi.Input.mapInputValue<EndpointDeploymentModelResponse, Map<String, dynamic>>(model, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'raiPolicyName': ?raiPolicyName,
      'sku': ?pulumi.Input.mapOptionalInputValue<CognitiveServicesSkuResponse, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'type': type,
      'versionUpgradeOption': ?versionUpgradeOption,
    };
  }

  factory OpenAIEndpointDeploymentResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return OpenAIEndpointDeploymentResourcePropertiesResponse(
      failureReason: map['failureReason'] == null ? null : (map['failureReason']! as String).input(),
      model: (EndpointDeploymentModelResponse.fromMap((map['model'] as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      raiPolicyName: map['raiPolicyName'] == null ? null : (map['raiPolicyName']! as String).input(),
      sku: map['sku'] == null ? null : (CognitiveServicesSkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      versionUpgradeOption: map['versionUpgradeOption'] == null ? null : (map['versionUpgradeOption']! as String).input(),
    );
  }
}

