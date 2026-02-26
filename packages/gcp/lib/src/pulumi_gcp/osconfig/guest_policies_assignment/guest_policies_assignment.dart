// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../guest_policies_assignment_group_label/guest_policies_assignment_group_label.dart';
import '../guest_policies_assignment_os_type/guest_policies_assignment_os_type.dart';

class GuestPoliciesAssignment {
  /// Targets instances matching at least one of these label sets. This allows an assignment to target disparate groups,
  /// for example "env=prod or env=staging".
  /// Structure is documented below.
  final List<GuestPoliciesAssignmentGroupLabel>? groupLabels;

  /// Targets VM instances whose name starts with one of these prefixes.
  /// Like labels, this is another way to group VM instances when targeting configs,
  /// for example prefix="prod-".
  /// Only supported for project-level policies.
  final List<String>? instanceNamePrefixes;

  /// Targets any of the instances specified. Instances are specified by their URI in the form
  /// zones/[ZONE]/instances/[INSTANCE_NAME].
  /// Instance targeting is uncommon and is supported to facilitate the management of changes
  /// by the instance or to target specific VM instances for development and testing.
  /// Only supported for project-level policies and must reference instances within this project.
  final List<String>? instances;

  /// Targets VM instances matching at least one of the following OS types.
  /// VM instances must match all supplied criteria for a given OsType to be included.
  /// Structure is documented below.
  final List<GuestPoliciesAssignmentOsType>? osTypes;

  /// Targets instances in any of these zones. Leave empty to target instances in any zone.
  /// Zonal targeting is uncommon and is supported to facilitate the management of changes by zone.
  final List<String>? zones;

  GuestPoliciesAssignment({
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
      map['groupLabels'] = Input.encodeList<GuestPoliciesAssignmentGroupLabel,
          Map<String, dynamic>>(groupLabelsValue, (value) => value.toMap());
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
          Input.encodeList<GuestPoliciesAssignmentOsType, Map<String, dynamic>>(
              osTypesValue, (value) => value.toMap());
    }
    final zonesValue = zones;
    if (zonesValue != null) {
      map['zones'] = zonesValue;
    }
    return map;
  }

  factory GuestPoliciesAssignment.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesAssignment(
      groupLabels: map['groupLabels'] == null
          ? null
          : Input.decodeList<GuestPoliciesAssignmentGroupLabel>(
              map['groupLabels'],
              (value) => GuestPoliciesAssignmentGroupLabel.fromMap(
                  (value as Map).cast<String, dynamic>())),
      instanceNamePrefixes: map['instanceNamePrefixes'] == null
          ? null
          : (map['instanceNamePrefixes'] as List).cast<String>(),
      instances: map['instances'] == null
          ? null
          : (map['instances'] as List).cast<String>(),
      osTypes: map['osTypes'] == null
          ? null
          : Input.decodeList<GuestPoliciesAssignmentOsType>(
              map['osTypes'],
              (value) => GuestPoliciesAssignmentOsType.fromMap(
                  (value as Map).cast<String, dynamic>())),
      zones:
          map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}
