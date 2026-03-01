// ignore_for_file: unused_element, unnecessary_cast


class GetLaunchTemplatePrivateDnsNameOption {
  final bool enableResourceNameDnsARecord;
  final bool enableResourceNameDnsAaaaRecord;
  final String hostnameType;

  /// Creates a new [GetLaunchTemplatePrivateDnsNameOption].
  /// [enableResourceNameDnsARecord] Required.
  /// [enableResourceNameDnsAaaaRecord] Required.
  /// [hostnameType] Required.
  GetLaunchTemplatePrivateDnsNameOption({
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

  factory GetLaunchTemplatePrivateDnsNameOption.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplatePrivateDnsNameOption(
      enableResourceNameDnsARecord: map['enableResourceNameDnsARecord'] as bool,
      enableResourceNameDnsAaaaRecord: map['enableResourceNameDnsAaaaRecord'] as bool,
      hostnameType: map['hostnameType'] as String,
    );
  }
}

