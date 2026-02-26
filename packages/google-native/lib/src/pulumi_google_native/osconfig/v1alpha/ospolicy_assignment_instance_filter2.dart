// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'ospolicy_assignment_instance_filter_inventory2.dart';
import 'ospolicy_assignment_label_set2.dart';

/// Filters to select target VMs for an assignment. If more than one filter criteria is specified below, a VM will be selected if and only if it satisfies all of them.
class OSPolicyAssignmentInstanceFilter2 {
  /// Target all VMs in the project. If true, no other criteria is permitted.
  final bool? all;

  /// List of label sets used for VM exclusion. If the list has more than one label set, the VM is excluded if any of the label sets are applicable for the VM.
  final List<OSPolicyAssignmentLabelSet2>? exclusionLabels;

  /// List of label sets used for VM inclusion. If the list has more than one `LabelSet`, the VM is included if any of the label sets are applicable for the VM.
  final List<OSPolicyAssignmentLabelSet2>? inclusionLabels;

  /// List of inventories to select VMs. A VM is selected if its inventory data matches at least one of the following inventories.
  final List<OSPolicyAssignmentInstanceFilterInventory2>? inventories;

  /// Deprecated. Use the `inventories` field instead. A VM is selected if it's OS short name matches with any of the values provided in this list.
  final List<String>? osShortNames;

  OSPolicyAssignmentInstanceFilter2({
    this.all,
    this.exclusionLabels,
    this.inclusionLabels,
    this.inventories,
    this.osShortNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allValue = all;
    if (allValue != null) {
      map['all'] = allValue;
    }
    final exclusionLabelsValue = exclusionLabels;
    if (exclusionLabelsValue != null) {
      map['exclusionLabels'] =
          Input.encodeList<OSPolicyAssignmentLabelSet2, Map<String, dynamic>>(
              exclusionLabelsValue, (value) => value.toMap());
    }
    final inclusionLabelsValue = inclusionLabels;
    if (inclusionLabelsValue != null) {
      map['inclusionLabels'] =
          Input.encodeList<OSPolicyAssignmentLabelSet2, Map<String, dynamic>>(
              inclusionLabelsValue, (value) => value.toMap());
    }
    final inventoriesValue = inventories;
    if (inventoriesValue != null) {
      map['inventories'] = Input.encodeList<
          OSPolicyAssignmentInstanceFilterInventory2,
          Map<String, dynamic>>(inventoriesValue, (value) => value.toMap());
    }
    final osShortNamesValue = osShortNames;
    if (osShortNamesValue != null) {
      map['osShortNames'] = osShortNamesValue;
    }
    return map;
  }

  factory OSPolicyAssignmentInstanceFilter2.fromMap(Map<String, dynamic> map) {
    return OSPolicyAssignmentInstanceFilter2(
      all: map['all'] == null ? null : map['all'] as bool,
      exclusionLabels: map['exclusionLabels'] == null
          ? null
          : Input.decodeList<OSPolicyAssignmentLabelSet2>(
              map['exclusionLabels'],
              (value) => OSPolicyAssignmentLabelSet2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      inclusionLabels: map['inclusionLabels'] == null
          ? null
          : Input.decodeList<OSPolicyAssignmentLabelSet2>(
              map['inclusionLabels'],
              (value) => OSPolicyAssignmentLabelSet2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      inventories: map['inventories'] == null
          ? null
          : Input.decodeList<OSPolicyAssignmentInstanceFilterInventory2>(
              map['inventories'],
              (value) => OSPolicyAssignmentInstanceFilterInventory2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      osShortNames: map['osShortNames'] == null
          ? null
          : (map['osShortNames'] as List).cast<String>(),
    );
  }
}
