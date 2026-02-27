// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../os_policy_assignment_instance_filter_exclusion_label/os_policy_assignment_instance_filter_exclusion_label.dart';
import '../os_policy_assignment_instance_filter_inclusion_label/os_policy_assignment_instance_filter_inclusion_label.dart';
import '../os_policy_assignment_instance_filter_inventory/os_policy_assignment_instance_filter_inventory.dart';

class OsPolicyAssignmentInstanceFilter {
  /// Target all VMs in the project. If true, no other criteria
  /// is permitted.
  final bool? all;

  /// List of label sets used for VM exclusion. If
  /// the list has more than one label set, the VM is excluded if any of the label
  /// sets are applicable for the VM. Structure is
  /// documented below.
  final List<OsPolicyAssignmentInstanceFilterExclusionLabel>? exclusionLabels;

  /// List of label sets used for VM inclusion. If
  /// the list has more than one `LabelSet`, the VM is included if any of the
  /// label sets are applicable for the VM. Structure is
  /// documented below.
  final List<OsPolicyAssignmentInstanceFilterInclusionLabel>? inclusionLabels;

  /// List of inventories to select VMs. A VM is
  /// selected if its inventory data matches at least one of the following
  /// inventories. Structure is documented below.
  final List<OsPolicyAssignmentInstanceFilterInventory>? inventories;

  OsPolicyAssignmentInstanceFilter({
    this.all,
    this.exclusionLabels,
    this.inclusionLabels,
    this.inventories,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allValue = all;
    if (allValue != null) {
      map['all'] = allValue;
    }
    final exclusionLabelsValue = exclusionLabels;
    if (exclusionLabelsValue != null) {
      map['exclusionLabels'] = pulumi.Input.encodeList<
          OsPolicyAssignmentInstanceFilterExclusionLabel,
          Map<String, dynamic>>(exclusionLabelsValue, (value) => value.toMap());
    }
    final inclusionLabelsValue = inclusionLabels;
    if (inclusionLabelsValue != null) {
      map['inclusionLabels'] = pulumi.Input.encodeList<
          OsPolicyAssignmentInstanceFilterInclusionLabel,
          Map<String, dynamic>>(inclusionLabelsValue, (value) => value.toMap());
    }
    final inventoriesValue = inventories;
    if (inventoriesValue != null) {
      map['inventories'] = pulumi.Input.encodeList<
          OsPolicyAssignmentInstanceFilterInventory,
          Map<String, dynamic>>(inventoriesValue, (value) => value.toMap());
    }
    return map;
  }

  factory OsPolicyAssignmentInstanceFilter.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentInstanceFilter(
      all: map['all'] == null ? null : map['all'] as bool,
      exclusionLabels: map['exclusionLabels'] == null
          ? null
          : pulumi.Input.decodeList<
                  OsPolicyAssignmentInstanceFilterExclusionLabel>(
              map['exclusionLabels'],
              (value) => OsPolicyAssignmentInstanceFilterExclusionLabel.fromMap(
                  (value as Map).cast<String, dynamic>())),
      inclusionLabels: map['inclusionLabels'] == null
          ? null
          : pulumi.Input.decodeList<
                  OsPolicyAssignmentInstanceFilterInclusionLabel>(
              map['inclusionLabels'],
              (value) => OsPolicyAssignmentInstanceFilterInclusionLabel.fromMap(
                  (value as Map).cast<String, dynamic>())),
      inventories: map['inventories'] == null
          ? null
          : pulumi.Input.decodeList<OsPolicyAssignmentInstanceFilterInventory>(
              map['inventories'],
              (value) => OsPolicyAssignmentInstanceFilterInventory.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
