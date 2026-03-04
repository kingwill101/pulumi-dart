// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cognitive_services_sku_response.dart';
import 'endpoint_deployment_model_response.dart';

class SpeechEndpointDeploymentResourcePropertiesResponse {
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
  /// Expected value is 'Azure.Speech'.
  final pulumi.Input<String> type;

  /// Deployment model version upgrade option.
  final pulumi.Input<String>? versionUpgradeOption;

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
      'model':
          pulumi.Input.mapInputValue<
            EndpointDeploymentModelResponse,
            Map<String, dynamic>
          >(model, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'raiPolicyName': ?raiPolicyName,
      'sku':
          ?pulumi.Input.mapOptionalInputValue<
            CognitiveServicesSkuResponse,
            Map<String, dynamic>
          >(sku, (value) => value.toMap()),
      'type': type,
      'versionUpgradeOption': ?versionUpgradeOption,
    };
  }

  factory SpeechEndpointDeploymentResourcePropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return SpeechEndpointDeploymentResourcePropertiesResponse(
      failureReason: (() {
        final guardedValue = map['failureReason'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      model: pulumi.Input.fromValue(
        EndpointDeploymentModelResponse.fromMap(
          (map['model']! as Map).cast<String, dynamic>(),
        ),
      ),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      raiPolicyName: (() {
        final guardedValue = map['raiPolicyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CognitiveServicesSkuResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      versionUpgradeOption: (() {
        final guardedValue = map['versionUpgradeOption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
