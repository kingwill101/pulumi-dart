// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getManagementDnsZoneBinding.
class GetManagementDnsZoneBindingArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> managementDnsZoneBindingId;
  final pulumi.Input<String> privateCloudId;
  final pulumi.Input<String>? project;

  GetManagementDnsZoneBindingArgs({
    required this.location,
    required this.managementDnsZoneBindingId,
    required this.privateCloudId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['managementDnsZoneBindingId'] = managementDnsZoneBindingId;
    map['privateCloudId'] = privateCloudId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetManagementDnsZoneBindingArgs.fromMap(Map<String, dynamic> map) {
    return GetManagementDnsZoneBindingArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      managementDnsZoneBindingId:
          pulumi.Input.asInput<String>(map['managementDnsZoneBindingId']),
      privateCloudId: pulumi.Input.asInput<String>(map['privateCloudId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
