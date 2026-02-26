// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../region_instance_group_manager_instance_flexibility_policy_instance_selection_disk/region_instance_group_manager_instance_flexibility_policy_instance_selection_disk.dart';

class RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection {
  /// List of disks to be attached to the instances created from this selection.
  final List<
          RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk>?
      disks;

  /// Full machine-type names, e.g. "n1-standard-16"
  final List<String> machineTypes;

  /// Name of the minimum CPU platform to be used by this instance selection. e.g. 'Intel Ice Lake'
  final String? minCpuPlatform;

  /// The name of the instance group manager. Must be 1-63
  /// characters long and comply with
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Supported characters
  /// include lowercase letters, numbers, and hyphens.
  final String name;

  /// Preference of this instance selection. Lower number means higher preference. MIG will first try to create a VM based on the machine-type with lowest rank and fallback to next rank based on availability. Machine types and instance selections with the same rank have the same preference.
  final int? rank;

  RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection({
    this.disks,
    required this.machineTypes,
    this.minCpuPlatform,
    required this.name,
    this.rank,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disksValue = disks;
    if (disksValue != null) {
      map['disks'] = Input.encodeList<
          RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk,
          Map<String, dynamic>>(disksValue, (value) => value.toMap());
    }
    map['machineTypes'] = machineTypes;
    final minCpuPlatformValue = minCpuPlatform;
    if (minCpuPlatformValue != null) {
      map['minCpuPlatform'] = minCpuPlatformValue;
    }
    map['name'] = name;
    final rankValue = rank;
    if (rankValue != null) {
      map['rank'] = rankValue;
    }
    return map;
  }

  factory RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection.fromMap(
      Map<String, dynamic> map) {
    return RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection(
      disks: map['disks'] == null
          ? null
          : Input.decodeList<
                  RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk>(
              map['disks'],
              (value) =>
                  RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk
                      .fromMap((value as Map).cast<String, dynamic>())),
      machineTypes: (map['machineTypes'] as List).cast<String>(),
      minCpuPlatform: map['minCpuPlatform'] == null
          ? null
          : map['minCpuPlatform'] as String,
      name: map['name'] as String,
      rank: map['rank'] == null ? null : map['rank'] as int,
    );
  }
}
