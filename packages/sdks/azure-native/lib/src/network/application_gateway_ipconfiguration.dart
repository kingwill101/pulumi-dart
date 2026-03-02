// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// IP configuration of an application gateway. Currently 1 public and 1 private IP configuration is allowed.
class ApplicationGatewayIPConfiguration {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the IP configuration that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// Reference to the subnet resource. A subnet from where application gateway gets its private address.
  final pulumi.Input<SubResource>? subnet;

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
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory ApplicationGatewayIPConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayIPConfiguration(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      subnet: map['subnet'] == null ? null : (SubResource.fromMap((map['subnet']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

