// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedOnlineEndpointDeploymentResourceProperties {
  final pulumi.Input<String>? endpointComputeType;
  /// The failure reason if the creation failed.
  final pulumi.Input<String>? failureReason;
  final pulumi.Input<String>? model;
  /// Kind of the deployment.
  /// Expected value is 'managedOnlineEndpoint'.
  final pulumi.Input<String> type;

  /// Creates a new [ManagedOnlineEndpointDeploymentResourceProperties].
  /// [endpointComputeType] Optional.
  /// [failureReason] The failure reason if the creation failed.
  /// [model] Optional.
  /// [type] Kind of the deployment.
  const ManagedOnlineEndpointDeploymentResourceProperties({
    this.endpointComputeType,
    this.failureReason,
    this.model,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointComputeType': ?endpointComputeType,
      'failureReason': ?failureReason,
      'model': ?model,
      'type': type,
    };
  }

  factory ManagedOnlineEndpointDeploymentResourceProperties.fromMap(Map<String, dynamic> map) {
    return ManagedOnlineEndpointDeploymentResourceProperties(
      endpointComputeType: (() { final guardedValue = map['endpointComputeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failureReason: (() { final guardedValue = map['failureReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
