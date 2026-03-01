// ignore_for_file: unused_element, unnecessary_cast


/// The ip configuration for a container network interface.
class ContainerNetworkInterfaceIpConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// The name of the resource. This name can be used to access the resource.
  final String? name;
  /// The provisioning state of the container network interface IP configuration resource.
  final String provisioningState;
  /// Sub Resource type.
  final String type;

  /// Creates a new [ContainerNetworkInterfaceIpConfigurationResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [name] The name of the resource. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the container network interface IP configuration resource.
  /// [type] Sub Resource type.
  ContainerNetworkInterfaceIpConfigurationResponse({
    required this.etag,
    this.name,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ContainerNetworkInterfaceIpConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ContainerNetworkInterfaceIpConfigurationResponse(
      etag: map['etag'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

