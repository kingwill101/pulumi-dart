// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchTemplatePrivateDnsNameOption {
  final pulumi.Input<bool> enableResourceNameDnsARecord;
  final pulumi.Input<bool> enableResourceNameDnsAaaaRecord;
  final pulumi.Input<String> hostnameType;

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
      enableResourceNameDnsARecord: pulumi.Input.fromValue(map['enableResourceNameDnsARecord'] as bool),
      enableResourceNameDnsAaaaRecord: pulumi.Input.fromValue(map['enableResourceNameDnsAaaaRecord'] as bool),
      hostnameType: pulumi.Input.fromValue(map['hostnameType'] as String),
    );
  }
}

