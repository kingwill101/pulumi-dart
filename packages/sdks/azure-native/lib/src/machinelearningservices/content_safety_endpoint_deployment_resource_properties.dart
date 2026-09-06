// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cognitive_services_sku.dart';
import 'endpoint_deployment_model.dart';

class ContentSafetyEndpointDeploymentResourceProperties {
  /// The failure reason if the creation failed.
  final pulumi.Input<String?>? failureReason;
  /// Model used for the endpoint deployment.
  final pulumi.Input<EndpointDeploymentModel> model;
  /// The name of RAI policy.
  final pulumi.Input<String?>? raiPolicyName;
  final pulumi.Input<CognitiveServicesSku?>? sku;
  /// Kind of the deployment.
  /// Expected value is 'Azure.ContentSafety'.
  final pulumi.Input<String> type;
  /// Deployment model version upgrade option.
  final pulumi.Input<dynamic>? versionUpgradeOption;

  /// Creates a new [ContentSafetyEndpointDeploymentResourceProperties].
  /// [failureReason] The failure reason if the creation failed.
  /// [model] Model used for the endpoint deployment.
  /// [raiPolicyName] The name of RAI policy.
  /// [sku] Optional.
  /// [type] Kind of the deployment.
  /// [versionUpgradeOption] Deployment model version upgrade option.
  const ContentSafetyEndpointDeploymentResourceProperties({
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

  factory ContentSafetyEndpointDeploymentResourceProperties.fromMap(Map<String, dynamic> map) {
    return ContentSafetyEndpointDeploymentResourceProperties(
      failureReason: (() { final guardedValue = map['failureReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      model: pulumi.Input.fromValue(EndpointDeploymentModel.fromMap((map['model']! as Map).cast<String, dynamic>())),
      raiPolicyName: (() { final guardedValue = map['raiPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CognitiveServicesSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      versionUpgradeOption: (() { final guardedValue = map['versionUpgradeOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
