// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource.dart';

/// IP configuration of an application gateway. Currently 1 public and 1 private IP configuration is allowed.
class ApplicationGatewayIPConfiguration {
  /// Resource ID.
  final String? id;
  /// Name of the IP configuration that is unique within an Application Gateway.
  final String? name;
  /// Reference to the subnet resource. A subnet from where application gateway gets its private address.
  final SubResource? subnet;

  /// Creates a new [ApplicationGatewayIPConfiguration].
  /// [id] Resource ID.
  /// [name] Name of the IP configuration that is unique within an Application Gateway.
  /// [subnet] Reference to the subnet resource. A subnet from where application gateway gets its private address.
  ApplicationGatewayIPConfiguration({
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

  factory ApplicationGatewayIPConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayIPConfiguration(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      subnet: map['subnet'] == null ? null : SubResource.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

