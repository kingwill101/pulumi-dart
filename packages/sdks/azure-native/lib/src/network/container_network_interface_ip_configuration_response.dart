// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The ip configuration for a container network interface.
class ContainerNetworkInterfaceIpConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// The name of the resource. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The provisioning state of the container network interface IP configuration resource.
  final pulumi.Input<String> provisioningState;
  /// Sub Resource type.
  final pulumi.Input<String> type;

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
      etag: (map['etag'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

