// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'patch_instance_filter_group_label2.dart';

/// A filter to target VM instances for patching. The targeted VMs must meet all criteria specified. So if both labels and zones are specified, the patch job targets only VMs with those labels and in those zones.
class PatchInstanceFilter2 {
  /// Target all VM instances in the project. If true, no other criteria is permitted.
  final bool? all;

  /// Targets VM instances matching at least one of these label sets. This allows targeting of disparate groups, for example "env=prod or env=staging".
  final List<PatchInstanceFilterGroupLabel2>? groupLabels;

  /// Targets VMs whose name starts with one of these prefixes. Similar to labels, this is another way to group VMs when targeting configs, for example prefix="prod-".
  final List<String>? instanceNamePrefixes;

  /// Targets any of the VM instances specified. Instances are specified by their URI in the form `zones/[ZONE]/instances/[INSTANCE_NAME]`, `projects/[PROJECT_ID]/zones/[ZONE]/instances/[INSTANCE_NAME]`, or `https://www.googleapis.com/compute/v1/projects/[PROJECT_ID]/zones/[ZONE]/instances/[INSTANCE_NAME]`
  final List<String>? instances;

  /// Targets VM instances in ANY of these zones. Leave empty to target VM instances in any zone.
  final List<String>? zones;

  PatchInstanceFilter2({
    this.all,
    this.groupLabels,
    this.instanceNamePrefixes,
    this.instances,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allValue = all;
    if (allValue != null) {
      map['all'] = allValue;
    }
    final groupLabelsValue = groupLabels;
    if (groupLabelsValue != null) {
      map['groupLabels'] = Input.encodeList<PatchInstanceFilterGroupLabel2,
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
    final zonesValue = zones;
    if (zonesValue != null) {
      map['zones'] = zonesValue;
    }
    return map;
  }

  factory PatchInstanceFilter2.fromMap(Map<String, dynamic> map) {
    return PatchInstanceFilter2(
      all: map['all'] == null ? null : map['all'] as bool,
      groupLabels: map['groupLabels'] == null
          ? null
          : Input.decodeList<PatchInstanceFilterGroupLabel2>(
              map['groupLabels'],
              (value) => PatchInstanceFilterGroupLabel2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      instanceNamePrefixes: map['instanceNamePrefixes'] == null
          ? null
          : (map['instanceNamePrefixes'] as List).cast<String>(),
      instances: map['instances'] == null
          ? null
          : (map['instances'] as List).cast<String>(),
      zones:
          map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}
