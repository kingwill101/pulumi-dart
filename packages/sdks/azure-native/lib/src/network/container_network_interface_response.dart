// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_network_interface_configuration_response.dart';
import 'container_network_interface_ip_configuration_response.dart';
import 'container_response.dart';

/// Container network interface child resource.
class ContainerNetworkInterfaceResponse {
  /// Reference to the container to which this container network interface is attached.
  final pulumi.Input<ContainerResponse>? container;

  /// Container network interface configuration from which this container network interface is created.
  final pulumi.Input<ContainerNetworkInterfaceConfigurationResponse>
  containerNetworkInterfaceConfiguration;

  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;

  /// Resource ID.
  final pulumi.Input<String>? id;

  /// Reference to the ip configuration on this container nic.
  final pulumi.Input<List<ContainerNetworkInterfaceIpConfigurationResponse>>
  ipConfigurations;

  /// The name of the resource. This name can be used to access the resource.
  final pulumi.Input<String>? name;

  /// The provisioning state of the container network interface resource.
  final pulumi.Input<String> provisioningState;

  /// Sub Resource type.
  final pulumi.Input<String> type;

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
      'container':
          ?pulumi.Input.mapOptionalInputValue<
            ContainerResponse,
            Map<String, dynamic>
          >(container, (value) => value.toMap()),
      'containerNetworkInterfaceConfiguration':
          pulumi.Input.mapInputValue<
            ContainerNetworkInterfaceConfigurationResponse,
            Map<String, dynamic>
          >(containerNetworkInterfaceConfiguration, (value) => value.toMap()),
      'etag': etag,
      'id': ?id,
      'ipConfigurations':
          pulumi.Input.mapInputValue<
            List<ContainerNetworkInterfaceIpConfigurationResponse>,
            List<Map<String, dynamic>>
          >(
            ipConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  ContainerNetworkInterfaceIpConfigurationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ContainerNetworkInterfaceResponse.fromMap(Map<String, dynamic> map) {
    return ContainerNetworkInterfaceResponse(
      container: (() {
        final guardedValue = map['container'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ContainerResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      containerNetworkInterfaceConfiguration: pulumi.Input.fromValue(
        ContainerNetworkInterfaceConfigurationResponse.fromMap(
          (map['containerNetworkInterfaceConfiguration']! as Map)
              .cast<String, dynamic>(),
        ),
      ),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipConfigurations: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<ContainerNetworkInterfaceIpConfigurationResponse>(
          map['ipConfigurations']!,
          (value) => ContainerNetworkInterfaceIpConfigurationResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
