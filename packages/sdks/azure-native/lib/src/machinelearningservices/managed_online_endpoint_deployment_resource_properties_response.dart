// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedOnlineEndpointDeploymentResourcePropertiesResponse {
  final pulumi.Input<String>? endpointComputeType;
  /// The failure reason if the creation failed.
  final pulumi.Input<String>? failureReason;
  final pulumi.Input<String>? model;
  /// Read-only provision state status property.
  final pulumi.Input<String> provisioningState;
  /// Kind of the deployment.
  /// Expected value is 'managedOnlineEndpoint'.
  final pulumi.Input<String> type;

  /// Creates a new [ManagedOnlineEndpointDeploymentResourcePropertiesResponse].
  /// [endpointComputeType] Optional.
  /// [failureReason] The failure reason if the creation failed.
  /// [model] Optional.
  /// [provisioningState] Read-only provision state status property.
  /// [type] Kind of the deployment.
  ManagedOnlineEndpointDeploymentResourcePropertiesResponse({
    this.endpointComputeType,
    this.failureReason,
    this.model,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointComputeType': ?endpointComputeType,
      'failureReason': ?failureReason,
      'model': ?model,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ManagedOnlineEndpointDeploymentResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagedOnlineEndpointDeploymentResourcePropertiesResponse(
      endpointComputeType: map['endpointComputeType'] == null ? null : (map['endpointComputeType'] as String).input(),
      failureReason: map['failureReason'] == null ? null : (map['failureReason'] as String).input(),
      model: map['model'] == null ? null : (map['model'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

