// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipconfiguration_profile.dart';
import 'sub_resource.dart';

/// Container network interface configuration child resource.
class ContainerNetworkInterfaceConfiguration {
  /// A list of container network interfaces created from this container network interface configuration.
  final pulumi.Input<List<SubResource>>? containerNetworkInterfaces;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// A list of ip configurations of the container network interface configuration.
  final pulumi.Input<List<IPConfigurationProfile>>? ipConfigurations;
  /// The name of the resource. This name can be used to access the resource.
  final pulumi.Input<String>? name;

  /// Creates a new [ContainerNetworkInterfaceConfiguration].
  /// [containerNetworkInterfaces] A list of container network interfaces created from this container network interface configuration.
  /// [id] Resource ID.
  /// [ipConfigurations] A list of ip configurations of the container network interface configuration.
  /// [name] The name of the resource. This name can be used to access the resource.
  ContainerNetworkInterfaceConfiguration({
    this.containerNetworkInterfaces,
    this.id,
    this.ipConfigurations,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerNetworkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(containerNetworkInterfaces, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'ipConfigurations': ?pulumi.Input.mapOptionalInputValue<List<IPConfigurationProfile>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<IPConfigurationProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory ContainerNetworkInterfaceConfiguration.fromMap(Map<String, dynamic> map) {
    return ContainerNetworkInterfaceConfiguration(
      containerNetworkInterfaces: map['containerNetworkInterfaces'] == null ? null : (pulumi.Input.decodeList<SubResource>(map['containerNetworkInterfaces']!, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      ipConfigurations: map['ipConfigurations'] == null ? null : (pulumi.Input.decodeList<IPConfigurationProfile>(map['ipConfigurations']!, (value) => IPConfigurationProfile.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

