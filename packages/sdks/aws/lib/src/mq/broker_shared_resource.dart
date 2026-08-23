// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BrokerSharedResource {
  /// DNS names through which the broker reaches the shared resource.
  final pulumi.Input<List<String>>? dnsNames;
  /// ARN of the shared resource.
  final pulumi.Input<String>? resourceArn;
  /// Status of the shared resource.
  final pulumi.Input<String>? status;
  /// Type of the shared resource, either `RESOURCE_SHARE` or `RESOURCE`.
  final pulumi.Input<String>? type;

  /// Creates a new [BrokerSharedResource].
  /// [dnsNames] DNS names through which the broker reaches the shared resource.
  /// [resourceArn] ARN of the shared resource.
  /// [status] Status of the shared resource.
  /// [type] Type of the shared resource, either `RESOURCE_SHARE` or `RESOURCE`.
  const BrokerSharedResource({
    this.dnsNames,
    this.resourceArn,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsNames': ?dnsNames,
      'resourceArn': ?resourceArn,
      'status': ?status,
      'type': ?type,
    };
  }

  factory BrokerSharedResource.fromMap(Map<String, dynamic> map) {
    return BrokerSharedResource(
      dnsNames: (() { final guardedValue = map['dnsNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
