// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipconfiguration_profile_response.dart';
import 'sub_resource_response.dart';

/// Container network interface configuration child resource.
class ContainerNetworkInterfaceConfigurationResponse {
  /// A list of container network interfaces created from this container network interface configuration.
  final pulumi.Input<List<SubResourceResponse>>? containerNetworkInterfaces;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// A list of ip configurations of the container network interface configuration.
  final pulumi.Input<List<IPConfigurationProfileResponse>>? ipConfigurations;
  /// The name of the resource. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The provisioning state of the container network interface configuration resource.
  final pulumi.Input<String> provisioningState;
  /// Sub Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [ContainerNetworkInterfaceConfigurationResponse].
  /// [containerNetworkInterfaces] A list of container network interfaces created from this container network interface configuration.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [ipConfigurations] A list of ip configurations of the container network interface configuration.
  /// [name] The name of the resource. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the container network interface configuration resource.
  /// [type] Sub Resource type.
  const ContainerNetworkInterfaceConfigurationResponse({
    this.containerNetworkInterfaces,
    required this.etag,
    this.id,
    this.ipConfigurations,
    this.name,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerNetworkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(containerNetworkInterfaces, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': etag,
      'id': ?id,
      'ipConfigurations': ?pulumi.Input.mapOptionalInputValue<List<IPConfigurationProfileResponse>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<IPConfigurationProfileResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ContainerNetworkInterfaceConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ContainerNetworkInterfaceConfigurationResponse(
      containerNetworkInterfaces: (() { final guardedValue = map['containerNetworkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IPConfigurationProfileResponse>(guardedValue, (value) => IPConfigurationProfileResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
