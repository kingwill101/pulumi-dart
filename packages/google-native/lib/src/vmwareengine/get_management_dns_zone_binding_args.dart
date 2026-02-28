// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_v1_get_management_dns_zone_binding_args_doc}
/// Arguments for getManagementDnsZoneBinding.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_get_management_dns_zone_binding_args_doc}
class GetManagementDnsZoneBindingArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> managementDnsZoneBindingId;
  final pulumi.Input<String> privateCloudId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetManagementDnsZoneBindingArgs].
  /// [location] Required.
  /// [managementDnsZoneBindingId] Required.
  /// [privateCloudId] Required.
  /// [project] Optional.
  GetManagementDnsZoneBindingArgs({
    required String location,
    required String managementDnsZoneBindingId,
    required String privateCloudId,
    String? project,
  })  : location = pulumi.Input.asInput<String>(location),
        managementDnsZoneBindingId =
            pulumi.Input.asInput<String>(managementDnsZoneBindingId),
        privateCloudId = pulumi.Input.asInput<String>(privateCloudId),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      location: map['location'] as String,
      managementDnsZoneBindingId: map['managementDnsZoneBindingId'] as String,
      privateCloudId: map['privateCloudId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
