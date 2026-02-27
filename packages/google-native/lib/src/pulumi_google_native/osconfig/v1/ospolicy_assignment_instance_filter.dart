// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_assignment_instance_filter_inventory.dart';
import 'ospolicy_assignment_label_set.dart';

/// Filters to select target VMs for an assignment. If more than one filter criteria is specified below, a VM will be selected if and only if it satisfies all of them.
class OSPolicyAssignmentInstanceFilter {
  /// Target all VMs in the project. If true, no other criteria is permitted.
  final bool? all;

  /// List of label sets used for VM exclusion. If the list has more than one label set, the VM is excluded if any of the label sets are applicable for the VM.
  final List<OSPolicyAssignmentLabelSet>? exclusionLabels;

  /// List of label sets used for VM inclusion. If the list has more than one `LabelSet`, the VM is included if any of the label sets are applicable for the VM.
  final List<OSPolicyAssignmentLabelSet>? inclusionLabels;

  /// List of inventories to select VMs. A VM is selected if its inventory data matches at least one of the following inventories.
  final List<OSPolicyAssignmentInstanceFilterInventory>? inventories;

  OSPolicyAssignmentInstanceFilter({
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
          OSPolicyAssignmentLabelSet,
          Map<String, dynamic>>(exclusionLabelsValue, (value) => value.toMap());
    }
    final inclusionLabelsValue = inclusionLabels;
    if (inclusionLabelsValue != null) {
      map['inclusionLabels'] = pulumi.Input.encodeList<
          OSPolicyAssignmentLabelSet,
          Map<String, dynamic>>(inclusionLabelsValue, (value) => value.toMap());
    }
    final inventoriesValue = inventories;
    if (inventoriesValue != null) {
      map['inventories'] = pulumi.Input.encodeList<
          OSPolicyAssignmentInstanceFilterInventory,
          Map<String, dynamic>>(inventoriesValue, (value) => value.toMap());
    }
    return map;
  }

  factory OSPolicyAssignmentInstanceFilter.fromMap(Map<String, dynamic> map) {
    return OSPolicyAssignmentInstanceFilter(
      all: map['all'] == null ? null : map['all'] as bool,
      exclusionLabels: map['exclusionLabels'] == null
          ? null
          : pulumi.Input.decodeList<OSPolicyAssignmentLabelSet>(
              map['exclusionLabels'],
              (value) => OSPolicyAssignmentLabelSet.fromMap(
                  (value as Map).cast<String, dynamic>())),
      inclusionLabels: map['inclusionLabels'] == null
          ? null
          : pulumi.Input.decodeList<OSPolicyAssignmentLabelSet>(
              map['inclusionLabels'],
              (value) => OSPolicyAssignmentLabelSet.fromMap(
                  (value as Map).cast<String, dynamic>())),
      inventories: map['inventories'] == null
          ? null
          : pulumi.Input.decodeList<OSPolicyAssignmentInstanceFilterInventory>(
              map['inventories'],
              (value) => OSPolicyAssignmentInstanceFilterInventory.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
