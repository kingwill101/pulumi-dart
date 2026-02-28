// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_group_label.dart';
import 'assignment_os_type.dart';

/// An assignment represents the group or groups of VM instances that the policy applies to. If an assignment is empty, it applies to all VM instances. Otherwise, the targeted VM instances must meet all the criteria specified. So if both labels and zones are specified, the policy applies to VM instances with those labels and in those zones.
class Assignment {
  /// Targets instances matching at least one of these label sets. This allows an assignment to target disparate groups, for example "env=prod or env=staging".
  final List<AssignmentGroupLabel>? groupLabels;

  /// Targets VM instances whose name starts with one of these prefixes. Like labels, this is another way to group VM instances when targeting configs, for example prefix="prod-". Only supported for project-level policies.
  final List<String>? instanceNamePrefixes;

  /// Targets any of the instances specified. Instances are specified by their URI in the form `zones/[ZONE]/instances/[INSTANCE_NAME]`. Instance targeting is uncommon and is supported to facilitate the management of changes by the instance or to target specific VM instances for development and testing. Only supported for project-level policies and must reference instances within this project.
  final List<String>? instances;

  /// Targets VM instances matching at least one of the following OS types. VM instances must match all supplied criteria for a given OsType to be included.
  final List<AssignmentOsType>? osTypes;

  /// Targets instances in any of these zones. Leave empty to target instances in any zone. Zonal targeting is uncommon and is supported to facilitate the management of changes by zone.
  final List<String>? zones;

  /// Creates a new [Assignment].
  /// [groupLabels] Targets instances matching at least one of these label sets. This allows an assignment to target disparate groups, for example "env=prod or env=staging".
  /// [instanceNamePrefixes] Targets VM instances whose name starts with one of these prefixes. Like labels, this is another way to group VM instances when targeting configs, for example prefix="prod-". Only supported for project-level policies.
  /// [instances] Targets any of the instances specified. Instances are specified by their URI in the form `zones/[ZONE]/instances/[INSTANCE_NAME]`. Instance targeting is uncommon and is supported to facilitate the management of changes by the instance or to target specific VM instances for development and testing. Only supported for project-level policies and must reference instances within this project.
  /// [osTypes] Targets VM instances matching at least one of the following OS types. VM instances must match all supplied criteria for a given OsType to be included.
  /// [zones] Targets instances in any of these zones. Leave empty to target instances in any zone. Zonal targeting is uncommon and is supported to facilitate the management of changes by zone.
  Assignment({
    this.groupLabels,
    this.instanceNamePrefixes,
    this.instances,
    this.osTypes,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final groupLabelsValue = groupLabels;
    if (groupLabelsValue != null) {
      map['groupLabels'] =
          pulumi.Input.encodeList<AssignmentGroupLabel, Map<String, dynamic>>(
              groupLabelsValue, (value) => value.toMap());
    }
    final instanceNamePrefixesValue = instanceNamePrefixes;
    if (instanceNamePrefixesValue != null) {
      map['instanceNamePrefixes'] = instanceNamePrefixesValue;
    }
    final instancesValue = instances;
    if (instancesValue != null) {
      map['instances'] = instancesValue;
    }
    final osTypesValue = osTypes;
    if (osTypesValue != null) {
      map['osTypes'] =
          pulumi.Input.encodeList<AssignmentOsType, Map<String, dynamic>>(
              osTypesValue, (value) => value.toMap());
    }
    final zonesValue = zones;
    if (zonesValue != null) {
      map['zones'] = zonesValue;
    }
    return map;
  }

  factory Assignment.fromMap(Map<String, dynamic> map) {
    return Assignment(
      groupLabels: map['groupLabels'] == null
          ? null
          : pulumi.Input.decodeList<AssignmentGroupLabel>(
              map['groupLabels'],
              (value) => AssignmentGroupLabel.fromMap(
                  (value as Map).cast<String, dynamic>())),
      instanceNamePrefixes: map['instanceNamePrefixes'] == null
          ? null
          : (map['instanceNamePrefixes'] as List).cast<String>(),
      instances: map['instances'] == null
          ? null
          : (map['instances'] as List).cast<String>(),
      osTypes: map['osTypes'] == null
          ? null
          : pulumi.Input.decodeList<AssignmentOsType>(
              map['osTypes'],
              (value) => AssignmentOsType.fromMap(
                  (value as Map).cast<String, dynamic>())),
      zones:
          map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}
