// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancePrivateDnsNameOption {
  /// Indicates whether to respond to DNS queries for instance hostnames with DNS A records.
  final pulumi.Input<bool> enableResourceNameDnsARecord;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.
  final pulumi.Input<bool> enableResourceNameDnsAaaaRecord;

  /// Type of hostname for EC2 instances.
  final pulumi.Input<String> hostnameType;

  /// Creates a new [GetInstancePrivateDnsNameOption].
  /// [enableResourceNameDnsARecord] Indicates whether to respond to DNS queries for instance hostnames with DNS A records.
  /// [enableResourceNameDnsAaaaRecord] Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.
  /// [hostnameType] Type of hostname for EC2 instances.
  GetInstancePrivateDnsNameOption({
    required this.enableResourceNameDnsARecord,
    required this.enableResourceNameDnsAaaaRecord,
    required this.hostnameType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableResourceNameDnsARecord': enableResourceNameDnsARecord,
      'enableResourceNameDnsAaaaRecord': enableResourceNameDnsAaaaRecord,
      'hostnameType': hostnameType,
    };
  }

  factory GetInstancePrivateDnsNameOption.fromMap(Map<String, dynamic> map) {
    return GetInstancePrivateDnsNameOption(
      enableResourceNameDnsARecord: pulumi.Input.fromValue(
        map['enableResourceNameDnsARecord'] as bool,
      ),
      enableResourceNameDnsAaaaRecord: pulumi.Input.fromValue(
        map['enableResourceNameDnsAaaaRecord'] as bool,
      ),
      hostnameType: pulumi.Input.fromValue(map['hostnameType'] as String),
    );
  }
}
