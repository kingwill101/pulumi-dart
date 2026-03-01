// ignore_for_file: unused_element, unnecessary_cast

import 'subnet.dart';

/// IP configuration profile child resource.
class IPConfigurationProfile {
  /// Resource ID.
  final String? id;
  /// The name of the resource. This name can be used to access the resource.
  final String? name;
  /// The reference to the subnet resource to create a container network interface ip configuration.
  final Subnet? subnet;

  /// Creates a new [IPConfigurationProfile].
  /// [id] Resource ID.
  /// [name] The name of the resource. This name can be used to access the resource.
  /// [subnet] The reference to the subnet resource to create a container network interface ip configuration.
  IPConfigurationProfile({
    this.id,
    this.name,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory IPConfigurationProfile.fromMap(Map<String, dynamic> map) {
    return IPConfigurationProfile(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      subnet: map['subnet'] == null ? null : Subnet.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

