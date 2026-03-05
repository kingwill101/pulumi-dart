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
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

