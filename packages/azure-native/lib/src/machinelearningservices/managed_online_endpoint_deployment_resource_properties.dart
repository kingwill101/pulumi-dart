// ignore_for_file: unused_element, unnecessary_cast


class ManagedOnlineEndpointDeploymentResourceProperties {
  final String? endpointComputeType;
  /// The failure reason if the creation failed.
  final String? failureReason;
  final String? model;
  /// Kind of the deployment.
  /// Expected value is 'managedOnlineEndpoint'.
  final String type;

  /// Creates a new [ManagedOnlineEndpointDeploymentResourceProperties].
  /// [endpointComputeType] Optional.
  /// [failureReason] The failure reason if the creation failed.
  /// [model] Optional.
  /// [type] Kind of the deployment.
  ManagedOnlineEndpointDeploymentResourceProperties({
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
      endpointComputeType: map['endpointComputeType'] == null ? null : map['endpointComputeType'] as String,
      failureReason: map['failureReason'] == null ? null : map['failureReason'] as String,
      model: map['model'] == null ? null : map['model'] as String,
      type: map['type'] as String,
    );
  }
}

