// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_group_label_response.dart';
import 'assignment_os_type_response.dart';

/// An assignment represents the group or groups of VM instances that the policy applies to. If an assignment is empty, it applies to all VM instances. Otherwise, the targeted VM instances must meet all the criteria specified. So if both labels and zones are specified, the policy applies to VM instances with those labels and in those zones.
class AssignmentResponse {
  /// Targets instances matching at least one of these label sets. This allows an assignment to target disparate groups, for example "env=prod or env=staging".
  final List<AssignmentGroupLabelResponse> groupLabels;

  /// Targets VM instances whose name starts with one of these prefixes. Like labels, this is another way to group VM instances when targeting configs, for example prefix="prod-". Only supported for project-level policies.
  final List<String> instanceNamePrefixes;

  /// Targets any of the instances specified. Instances are specified by their URI in the form `zones/[ZONE]/instances/[INSTANCE_NAME]`. Instance targeting is uncommon and is supported to facilitate the management of changes by the instance or to target specific VM instances for development and testing. Only supported for project-level policies and must reference instances within this project.
  final List<String> instances;

  /// Targets VM instances matching at least one of the following OS types. VM instances must match all supplied criteria for a given OsType to be included.
  final List<AssignmentOsTypeResponse> osTypes;

  /// Targets instances in any of these zones. Leave empty to target instances in any zone. Zonal targeting is uncommon and is supported to facilitate the management of changes by zone.
  final List<String> zones;

  AssignmentResponse({
    required this.groupLabels,
    required this.instanceNamePrefixes,
    required this.instances,
    required this.osTypes,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupLabels'] = pulumi.Input.encodeList<AssignmentGroupLabelResponse,
        Map<String, dynamic>>(groupLabels, (value) => value.toMap());
    map['instanceNamePrefixes'] = instanceNamePrefixes;
    map['instances'] = instances;
    map['osTypes'] =
        pulumi.Input.encodeList<AssignmentOsTypeResponse, Map<String, dynamic>>(
            osTypes, (value) => value.toMap());
    map['zones'] = zones;
    return map;
  }

  factory AssignmentResponse.fromMap(Map<String, dynamic> map) {
    return AssignmentResponse(
      groupLabels: pulumi.Input.decodeList<AssignmentGroupLabelResponse>(
          map['groupLabels'],
          (value) => AssignmentGroupLabelResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      instanceNamePrefixes:
          (map['instanceNamePrefixes'] as List).cast<String>(),
      instances: (map['instances'] as List).cast<String>(),
      osTypes: pulumi.Input.decodeList<AssignmentOsTypeResponse>(
          map['osTypes'],
          (value) => AssignmentOsTypeResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}
