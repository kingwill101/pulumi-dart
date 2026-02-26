// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'patch_instance_filter_group_label_response2.dart';

/// A filter to target VM instances for patching. The targeted VMs must meet all criteria specified. So if both labels and zones are specified, the patch job targets only VMs with those labels and in those zones.
class PatchInstanceFilterResponse2 {
  /// Target all VM instances in the project. If true, no other criteria is permitted.
  final bool all;

  /// Targets VM instances matching at least one of these label sets. This allows targeting of disparate groups, for example "env=prod or env=staging".
  final List<PatchInstanceFilterGroupLabelResponse2> groupLabels;

  /// Targets VMs whose name starts with one of these prefixes. Similar to labels, this is another way to group VMs when targeting configs, for example prefix="prod-".
  final List<String> instanceNamePrefixes;

  /// Targets any of the VM instances specified. Instances are specified by their URI in the form `zones/[ZONE]/instances/[INSTANCE_NAME]`, `projects/[PROJECT_ID]/zones/[ZONE]/instances/[INSTANCE_NAME]`, or `https://www.googleapis.com/compute/v1/projects/[PROJECT_ID]/zones/[ZONE]/instances/[INSTANCE_NAME]`
  final List<String> instances;

  /// Targets VM instances in ANY of these zones. Leave empty to target VM instances in any zone.
  final List<String> zones;

  PatchInstanceFilterResponse2({
    required this.all,
    required this.groupLabels,
    required this.instanceNamePrefixes,
    required this.instances,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['all'] = all;
    map['groupLabels'] = Input.encodeList<
        PatchInstanceFilterGroupLabelResponse2,
        Map<String, dynamic>>(groupLabels, (value) => value.toMap());
    map['instanceNamePrefixes'] = instanceNamePrefixes;
    map['instances'] = instances;
    map['zones'] = zones;
    return map;
  }

  factory PatchInstanceFilterResponse2.fromMap(Map<String, dynamic> map) {
    return PatchInstanceFilterResponse2(
      all: map['all'] as bool,
      groupLabels: Input.decodeList<PatchInstanceFilterGroupLabelResponse2>(
          map['groupLabels'],
          (value) => PatchInstanceFilterGroupLabelResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      instanceNamePrefixes:
          (map['instanceNamePrefixes'] as List).cast<String>(),
      instances: (map['instances'] as List).cast<String>(),
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}
