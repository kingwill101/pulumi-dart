// ignore_for_file: unused_element, unnecessary_cast

class InstancePrivateDnsNameOptions {
  /// Indicates whether to respond to DNS queries for instance hostnames with DNS A records.
  final bool? enableResourceNameDnsARecord;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.
  final bool? enableResourceNameDnsAaaaRecord;

  /// Type of hostname for Amazon EC2 instances. For IPv4 only subnets, an instance DNS name must be based on the instance IPv4 address. For IPv6 native subnets, an instance DNS name must be based on the instance ID. For dual-stack subnets, you can specify whether DNS names use the instance IPv4 address or the instance ID. Valid values: `ip-name` and `resource-name`.
  final String? hostnameType;

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
      enableResourceNameDnsARecord: map['enableResourceNameDnsARecord'] == null
          ? null
          : map['enableResourceNameDnsARecord'] as bool,
      enableResourceNameDnsAaaaRecord:
          map['enableResourceNameDnsAaaaRecord'] == null
          ? null
          : map['enableResourceNameDnsAaaaRecord'] as bool,
      hostnameType: map['hostnameType'] == null
          ? null
          : map['hostnameType'] as String,
    );
  }
}
