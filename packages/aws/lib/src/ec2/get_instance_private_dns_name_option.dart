// ignore_for_file: unused_element, unnecessary_cast

class GetInstancePrivateDnsNameOption {
  /// Indicates whether to respond to DNS queries for instance hostnames with DNS A records.
  final bool enableResourceNameDnsARecord;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.
  final bool enableResourceNameDnsAaaaRecord;

  /// Type of hostname for EC2 instances.
  final String hostnameType;

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
    final map = <String, dynamic>{};
    map['enableResourceNameDnsARecord'] = enableResourceNameDnsARecord;
    map['enableResourceNameDnsAaaaRecord'] = enableResourceNameDnsAaaaRecord;
    map['hostnameType'] = hostnameType;
    return map;
  }

  factory GetInstancePrivateDnsNameOption.fromMap(Map<String, dynamic> map) {
    return GetInstancePrivateDnsNameOption(
      enableResourceNameDnsARecord: map['enableResourceNameDnsARecord'] as bool,
      enableResourceNameDnsAaaaRecord:
          map['enableResourceNameDnsAaaaRecord'] as bool,
      hostnameType: map['hostnameType'] as String,
    );
  }
}
