// ignore_for_file: unused_element, unnecessary_cast


class DeploymentResourceConfigurationResponse {
  /// Optional number of instances or nodes used by the compute target.
  final int? instanceCount;
  /// Optional type of VM used as supported by the compute target.
  final String? instanceType;
  /// Additional properties bag.
  final Map<String, dynamic>? properties;

  /// Creates a new [DeploymentResourceConfigurationResponse].
  /// [instanceCount] Optional number of instances or nodes used by the compute target.
  /// [instanceType] Optional type of VM used as supported by the compute target.
  /// [properties] Additional properties bag.
  DeploymentResourceConfigurationResponse({
    this.instanceCount,
    this.instanceType,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': ?instanceCount,
      'instanceType': ?instanceType,
      'properties': ?properties,
    };
  }

  factory DeploymentResourceConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentResourceConfigurationResponse(
      instanceCount: map['instanceCount'] == null ? null : map['instanceCount'] as int,
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, dynamic>(),
    );
  }
}

