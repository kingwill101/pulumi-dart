// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cognitive_services_sku.dart';
import 'endpoint_deployment_model.dart';

class OpenAIEndpointDeploymentResourceProperties {
  /// The failure reason if the creation failed.
  final pulumi.Input<String>? failureReason;
  /// Model used for the endpoint deployment.
  final pulumi.Input<EndpointDeploymentModel> model;
  /// The name of RAI policy.
  final pulumi.Input<String>? raiPolicyName;
  final pulumi.Input<CognitiveServicesSku>? sku;
  /// Kind of the deployment.
  /// Expected value is 'Azure.OpenAI'.
  final pulumi.Input<String> type;
  /// Deployment model version upgrade option.
  final pulumi.Input<String>? versionUpgradeOption;

  /// Creates a new [OpenAIEndpointDeploymentResourceProperties].
  /// [failureReason] The failure reason if the creation failed.
  /// [model] Model used for the endpoint deployment.
  /// [raiPolicyName] The name of RAI policy.
  /// [sku] Optional.
  /// [type] Kind of the deployment.
  /// [versionUpgradeOption] Deployment model version upgrade option.
  OpenAIEndpointDeploymentResourceProperties({
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
      'model': pulumi.Input.mapInputValue<EndpointDeploymentModel, Map<String, dynamic>>(model, (value) => value.toMap()),
      'raiPolicyName': ?raiPolicyName,
      'sku': ?pulumi.Input.mapOptionalInputValue<CognitiveServicesSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'type': type,
      'versionUpgradeOption': ?versionUpgradeOption,
    };
  }

  factory OpenAIEndpointDeploymentResourceProperties.fromMap(Map<String, dynamic> map) {
    return OpenAIEndpointDeploymentResourceProperties(
      failureReason: map['failureReason'] == null ? null : (map['failureReason'] as String).input(),
      model: (EndpointDeploymentModel.fromMap((map['model'] as Map).cast<String, dynamic>())).input(),
      raiPolicyName: map['raiPolicyName'] == null ? null : (map['raiPolicyName'] as String).input(),
      sku: map['sku'] == null ? null : (CognitiveServicesSku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      versionUpgradeOption: map['versionUpgradeOption'] == null ? null : (map['versionUpgradeOption'] as String).input(),
    );
  }
}

