// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpcEndpointServicePrivateDnsNameConfiguration {
  /// Name of the record subdomain the service provider needs to create.
  final pulumi.Input<String>? name;
  /// Verification state of the VPC endpoint service. Consumers of the endpoint service can use the private name only when the state is `verified`.
  final pulumi.Input<String>? state;
  /// Endpoint service verification type, for example `TXT`.
  final pulumi.Input<String>? type;
  /// Value the service provider adds to the private DNS name domain record before verification.
  final pulumi.Input<String>? value;

  /// Creates a new [VpcEndpointServicePrivateDnsNameConfiguration].
  /// [name] Name of the record subdomain the service provider needs to create.
  /// [state] Verification state of the VPC endpoint service. Consumers of the endpoint service can use the private name only when the state is `verified`.
  /// [type] Endpoint service verification type, for example `TXT`.
  /// [value] Value the service provider adds to the private DNS name domain record before verification.
  const VpcEndpointServicePrivateDnsNameConfiguration({
    this.name,
    this.state,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'state': ?state,
      'type': ?type,
      'value': ?value,
    };
  }

  factory VpcEndpointServicePrivateDnsNameConfiguration.fromMap(Map<String, dynamic> map) {
    return VpcEndpointServicePrivateDnsNameConfiguration(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

