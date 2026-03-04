// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstancePrivateDnsNameOptions {
  /// Indicates whether to respond to DNS queries for instance hostnames with DNS A records.
  final pulumi.Input<bool>? enableResourceNameDnsARecord;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.
  final pulumi.Input<bool>? enableResourceNameDnsAaaaRecord;

  /// Type of hostname for Amazon EC2 instances. For IPv4 only subnets, an instance DNS name must be based on the instance IPv4 address. For IPv6 native subnets, an instance DNS name must be based on the instance ID. For dual-stack subnets, you can specify whether DNS names use the instance IPv4 address or the instance ID. Valid values: `ip-name` and `resource-name`.
  final pulumi.Input<String>? hostnameType;

  /// Creates a new [InstancePrivateDnsNameOptions].
  /// [enableResourceNameDnsARecord] Indicates whether to respond to DNS queries for instance hostnames with DNS A records.
  /// [enableResourceNameDnsAaaaRecord] Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.
  /// [hostnameType] Type of hostname for Amazon EC2 instances. For IPv4 only subnets, an instance DNS name must be based on the instance IPv4 address. For IPv6 native subnets, an instance DNS name must be based on the instance ID. For dual-stack subnets, you can specify whether DNS names use the instance IPv4 address or the instance ID. Valid values: `ip-name` and `resource-name`.
  InstancePrivateDnsNameOptions({
    this.enableResourceNameDnsARecord,
    this.enableResourceNameDnsAaaaRecord,
    this.hostnameType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableResourceNameDnsARecord': ?enableResourceNameDnsARecord,
      'enableResourceNameDnsAaaaRecord': ?enableResourceNameDnsAaaaRecord,
      'hostnameType': ?hostnameType,
    };
  }

  factory InstancePrivateDnsNameOptions.fromMap(Map<String, dynamic> map) {
    return InstancePrivateDnsNameOptions(
      enableResourceNameDnsARecord: (() {
        final guardedValue = map['enableResourceNameDnsARecord'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableResourceNameDnsAaaaRecord: (() {
        final guardedValue = map['enableResourceNameDnsAaaaRecord'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      hostnameType: (() {
        final guardedValue = map['hostnameType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
