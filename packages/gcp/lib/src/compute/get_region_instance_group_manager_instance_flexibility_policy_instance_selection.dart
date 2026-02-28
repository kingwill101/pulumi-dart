// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_instance_group_manager_instance_flexibility_policy_instance_selection_disk.dart';

class GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection {
  /// List of disks to be attached to the instances created from this selection.
  final List<
          GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk>
      disks;

  /// Full machine-type names, e.g. "n1-standard-16"
  final List<String> machineTypes;

  /// Name of the minimum CPU platform to be used by this instance selection. e.g. 'Intel Ice Lake'
  final String minCpuPlatform;

  /// The name of the instance group. Either `name` or `self_link` must be provided.
  final String name;

  /// Preference of this instance selection. Lower number means higher preference. MIG will first try to create a VM based on the machine-type with lowest rank and fallback to next rank based on availability. Machine types and instance selections with the same rank have the same preference.
  final int rank;

  /// Creates a new [GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection].
  /// [disks] List of disks to be attached to the instances created from this selection.
  /// [machineTypes] Full machine-type names, e.g. "n1-standard-16"
  /// [minCpuPlatform] Name of the minimum CPU platform to be used by this instance selection. e.g. 'Intel Ice Lake'
  /// [name] The name of the instance group. Either `name` or `self_link` must be provided.
  /// [rank] Preference of this instance selection. Lower number means higher preference. MIG will first try to create a VM based on the machine-type with lowest rank and fallback to next rank based on availability. Machine types and instance selections with the same rank have the same preference.
  GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection({
    required this.disks,
    required this.machineTypes,
    required this.minCpuPlatform,
    required this.name,
    required this.rank,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disks'] = pulumi.Input.encodeList<
        GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk,
        Map<String, dynamic>>(disks, (value) => value.toMap());
    map['machineTypes'] = machineTypes;
    map['minCpuPlatform'] = minCpuPlatform;
    map['name'] = name;
    map['rank'] = rank;
    return map;
  }

  factory GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection(
      disks: pulumi.Input.decodeList<
              GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk>(
          map['disks'],
          (value) =>
              GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk
                  .fromMap((value as Map).cast<String, dynamic>())),
      machineTypes: (map['machineTypes'] as List).cast<String>(),
      minCpuPlatform: map['minCpuPlatform'] as String,
      name: map['name'] as String,
      rank: map['rank'] as int,
    );
  }
}
