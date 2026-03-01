// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipconfiguration_profile_response.dart';
import 'sub_resource_response.dart';

/// Container network interface configuration child resource.
class ContainerNetworkInterfaceConfigurationResponse {
  /// A list of container network interfaces created from this container network interface configuration.
  final List<SubResourceResponse>? containerNetworkInterfaces;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// A list of ip configurations of the container network interface configuration.
  final List<IPConfigurationProfileResponse>? ipConfigurations;
  /// The name of the resource. This name can be used to access the resource.
  final String? name;
  /// The provisioning state of the container network interface configuration resource.
  final String provisioningState;
  /// Sub Resource type.
  final String type;

  /// Creates a new [ContainerNetworkInterfaceConfigurationResponse].
  /// [containerNetworkInterfaces] A list of container network interfaces created from this container network interface configuration.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [ipConfigurations] A list of ip configurations of the container network interface configuration.
  /// [name] The name of the resource. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the container network interface configuration resource.
  /// [type] Sub Resource type.
  ContainerNetworkInterfaceConfigurationResponse({
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
      'containerNetworkInterfaces': ?containerNetworkInterfaces == null ? null : pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(containerNetworkInterfaces!, (value) => value.toMap()),
      'etag': etag,
      'id': ?id,
      'ipConfigurations': ?ipConfigurations == null ? null : pulumi.Input.encodeList<IPConfigurationProfileResponse, Map<String, dynamic>>(ipConfigurations!, (value) => value.toMap()),
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ContainerNetworkInterfaceConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ContainerNetworkInterfaceConfigurationResponse(
      containerNetworkInterfaces: map['containerNetworkInterfaces'] == null ? null : pulumi.Input.decodeList<SubResourceResponse>(map['containerNetworkInterfaces'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      ipConfigurations: map['ipConfigurations'] == null ? null : pulumi.Input.decodeList<IPConfigurationProfileResponse>(map['ipConfigurations'], (value) => IPConfigurationProfileResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

