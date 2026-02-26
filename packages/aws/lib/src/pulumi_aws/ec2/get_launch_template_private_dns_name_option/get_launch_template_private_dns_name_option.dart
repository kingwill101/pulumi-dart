// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplatePrivateDnsNameOption {
  final bool enableResourceNameDnsARecord;
  final bool enableResourceNameDnsAaaaRecord;
  final String hostnameType;

  GetLaunchTemplatePrivateDnsNameOption({
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

  factory GetLaunchTemplatePrivateDnsNameOption.fromMap(
      Map<String, dynamic> map) {
    return GetLaunchTemplatePrivateDnsNameOption(
      enableResourceNameDnsARecord: map['enableResourceNameDnsARecord'] as bool,
      enableResourceNameDnsAaaaRecord:
          map['enableResourceNameDnsAaaaRecord'] as bool,
      hostnameType: map['hostnameType'] as String,
    );
  }
}
