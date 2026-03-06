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
  const ContainerNetworkInterfaceConfiguration({
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
      containerNetworkInterfaces: (() { final guardedValue = map['containerNetworkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResource>(guardedValue, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IPConfigurationProfile>(guardedValue, (value) => IPConfigurationProfile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

