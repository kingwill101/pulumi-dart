// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'patch_instance_filter_group_label_response.dart';

/// A filter to target VM instances for patching. The targeted VMs must meet all criteria specified. So if both labels and zones are specified, the patch job targets only VMs with those labels and in those zones.
class PatchInstanceFilterResponse {
  /// Target all VM instances in the project. If true, no other criteria is permitted.
  final bool all;

  /// Targets VM instances matching ANY of these GroupLabels. This allows targeting of disparate groups of VM instances.
  final List<PatchInstanceFilterGroupLabelResponse> groupLabels;

  /// Targets VMs whose name starts with one of these prefixes. Similar to labels, this is another way to group VMs when targeting configs, for example prefix="prod-".
  final List<String> instanceNamePrefixes;

  /// Targets any of the VM instances specified. Instances are specified by their URI in the form `zones/[ZONE]/instances/[INSTANCE_NAME]`, `projects/[PROJECT_ID]/zones/[ZONE]/instances/[INSTANCE_NAME]`, or `https://www.googleapis.com/compute/v1/projects/[PROJECT_ID]/zones/[ZONE]/instances/[INSTANCE_NAME]`
  final List<String> instances;

  /// Targets VM instances in ANY of these zones. Leave empty to target VM instances in any zone.
  final List<String> zones;

  PatchInstanceFilterResponse({
    required this.all,
    required this.groupLabels,
    required this.instanceNamePrefixes,
    required this.instances,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['all'] = all;
    map['groupLabels'] = pulumi.Input.encodeList<
        PatchInstanceFilterGroupLabelResponse,
        Map<String, dynamic>>(groupLabels, (value) => value.toMap());
    map['instanceNamePrefixes'] = instanceNamePrefixes;
    map['instances'] = instances;
    map['zones'] = zones;
    return map;
  }

  factory PatchInstanceFilterResponse.fromMap(Map<String, dynamic> map) {
    return PatchInstanceFilterResponse(
      all: map['all'] as bool,
      groupLabels:
          pulumi.Input.decodeList<PatchInstanceFilterGroupLabelResponse>(
              map['groupLabels'],
              (value) => PatchInstanceFilterGroupLabelResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      instanceNamePrefixes:
          (map['instanceNamePrefixes'] as List).cast<String>(),
      instances: (map['instances'] as List).cast<String>(),
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}
