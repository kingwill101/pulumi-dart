// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getManagementDnsZoneBinding.
class GetManagementDnsZoneBindingArgs {
  final Input<String> location;
  final Input<String> managementDnsZoneBindingId;
  final Input<String> privateCloudId;
  final Input<String>? project;

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
      location: Input.asInput<String>(map['location']),
      managementDnsZoneBindingId:
          Input.asInput<String>(map['managementDnsZoneBindingId']),
      privateCloudId: Input.asInput<String>(map['privateCloudId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
