// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_network_interface_configuration_response.dart';
import 'container_network_interface_ip_configuration_response.dart';
import 'container_response.dart';

/// Container network interface child resource.
class ContainerNetworkInterfaceResponse {
  /// Reference to the container to which this container network interface is attached.
  final ContainerResponse? container;
  /// Container network interface configuration from which this container network interface is created.
  final ContainerNetworkInterfaceConfigurationResponse containerNetworkInterfaceConfiguration;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Reference to the ip configuration on this container nic.
  final List<ContainerNetworkInterfaceIpConfigurationResponse> ipConfigurations;
  /// The name of the resource. This name can be used to access the resource.
  final String? name;
  /// The provisioning state of the container network interface resource.
  final String provisioningState;
  /// Sub Resource type.
  final String type;

  /// Creates a new [ContainerNetworkInterfaceResponse].
  /// [container] Reference to the container to which this container network interface is attached.
  /// [containerNetworkInterfaceConfiguration] Container network interface configuration from which this container network interface is created.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [ipConfigurations] Reference to the ip configuration on this container nic.
  /// [name] The name of the resource. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the container network interface resource.
  /// [type] Sub Resource type.
  ContainerNetworkInterfaceResponse({
    this.container,
    required this.containerNetworkInterfaceConfiguration,
    required this.etag,
    this.id,
    required this.ipConfigurations,
    this.name,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': ?container == null ? null : container!.toMap(),
      'containerNetworkInterfaceConfiguration': containerNetworkInterfaceConfiguration.toMap(),
      'etag': etag,
      'id': ?id,
      'ipConfigurations': pulumi.Input.encodeList<ContainerNetworkInterfaceIpConfigurationResponse, Map<String, dynamic>>(ipConfigurations, (value) => value.toMap()),
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ContainerNetworkInterfaceResponse.fromMap(Map<String, dynamic> map) {
    return ContainerNetworkInterfaceResponse(
      container: map['container'] == null ? null : ContainerResponse.fromMap((map['container'] as Map).cast<String, dynamic>()),
      containerNetworkInterfaceConfiguration: ContainerNetworkInterfaceConfigurationResponse.fromMap((map['containerNetworkInterfaceConfiguration'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      ipConfigurations: pulumi.Input.decodeList<ContainerNetworkInterfaceIpConfigurationResponse>(map['ipConfigurations'], (value) => ContainerNetworkInterfaceIpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

