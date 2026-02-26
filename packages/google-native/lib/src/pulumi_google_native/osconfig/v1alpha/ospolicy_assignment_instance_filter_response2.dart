// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'ospolicy_assignment_instance_filter_inventory_response2.dart';
import 'ospolicy_assignment_label_set_response2.dart';

/// Filters to select target VMs for an assignment. If more than one filter criteria is specified below, a VM will be selected if and only if it satisfies all of them.
class OSPolicyAssignmentInstanceFilterResponse2 {
  /// Target all VMs in the project. If true, no other criteria is permitted.
  final bool all;

  /// List of label sets used for VM exclusion. If the list has more than one label set, the VM is excluded if any of the label sets are applicable for the VM.
  final List<OSPolicyAssignmentLabelSetResponse2> exclusionLabels;

  /// List of label sets used for VM inclusion. If the list has more than one `LabelSet`, the VM is included if any of the label sets are applicable for the VM.
  final List<OSPolicyAssignmentLabelSetResponse2> inclusionLabels;

  /// List of inventories to select VMs. A VM is selected if its inventory data matches at least one of the following inventories.
  final List<OSPolicyAssignmentInstanceFilterInventoryResponse2> inventories;

  /// Deprecated. Use the `inventories` field instead. A VM is selected if it's OS short name matches with any of the values provided in this list.
  final List<String> osShortNames;

  OSPolicyAssignmentInstanceFilterResponse2({
    required this.all,
    required this.exclusionLabels,
    required this.inclusionLabels,
    required this.inventories,
    required this.osShortNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['all'] = all;
    map['exclusionLabels'] = Input.encodeList<
        OSPolicyAssignmentLabelSetResponse2,
        Map<String, dynamic>>(exclusionLabels, (value) => value.toMap());
    map['inclusionLabels'] = Input.encodeList<
        OSPolicyAssignmentLabelSetResponse2,
        Map<String, dynamic>>(inclusionLabels, (value) => value.toMap());
    map['inventories'] = Input.encodeList<
        OSPolicyAssignmentInstanceFilterInventoryResponse2,
        Map<String, dynamic>>(inventories, (value) => value.toMap());
    map['osShortNames'] = osShortNames;
    return map;
  }

  factory OSPolicyAssignmentInstanceFilterResponse2.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyAssignmentInstanceFilterResponse2(
      all: map['all'] as bool,
      exclusionLabels: Input.decodeList<OSPolicyAssignmentLabelSetResponse2>(
          map['exclusionLabels'],
          (value) => OSPolicyAssignmentLabelSetResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      inclusionLabels: Input.decodeList<OSPolicyAssignmentLabelSetResponse2>(
          map['inclusionLabels'],
          (value) => OSPolicyAssignmentLabelSetResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      inventories:
          Input.decodeList<OSPolicyAssignmentInstanceFilterInventoryResponse2>(
              map['inventories'],
              (value) =>
                  OSPolicyAssignmentInstanceFilterInventoryResponse2.fromMap(
                      (value as Map).cast<String, dynamic>())),
      osShortNames: (map['osShortNames'] as List).cast<String>(),
    );
  }
}
