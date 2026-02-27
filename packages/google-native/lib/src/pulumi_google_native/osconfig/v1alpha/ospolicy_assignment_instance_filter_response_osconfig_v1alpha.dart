// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_assignment_instance_filter_inventory_response_osconfig_v1alpha.dart';
import 'ospolicy_assignment_label_set_response_osconfig_v1alpha.dart';

/// Filters to select target VMs for an assignment. If more than one filter criteria is specified below, a VM will be selected if and only if it satisfies all of them.
class OSPolicyAssignmentInstanceFilterResponseOsconfigV1alpha {
  /// Target all VMs in the project. If true, no other criteria is permitted.
  final bool all;

  /// List of label sets used for VM exclusion. If the list has more than one label set, the VM is excluded if any of the label sets are applicable for the VM.
  final List<OSPolicyAssignmentLabelSetResponseOsconfigV1alpha> exclusionLabels;

  /// List of label sets used for VM inclusion. If the list has more than one `LabelSet`, the VM is included if any of the label sets are applicable for the VM.
  final List<OSPolicyAssignmentLabelSetResponseOsconfigV1alpha> inclusionLabels;

  /// List of inventories to select VMs. A VM is selected if its inventory data matches at least one of the following inventories.
  final List<OSPolicyAssignmentInstanceFilterInventoryResponseOsconfigV1alpha>
      inventories;

  /// Deprecated. Use the `inventories` field instead. A VM is selected if it's OS short name matches with any of the values provided in this list.
  final List<String> osShortNames;

  OSPolicyAssignmentInstanceFilterResponseOsconfigV1alpha({
    required this.all,
    required this.exclusionLabels,
    required this.inclusionLabels,
    required this.inventories,
    required this.osShortNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['all'] = all;
    map['exclusionLabels'] = pulumi.Input.encodeList<
        OSPolicyAssignmentLabelSetResponseOsconfigV1alpha,
        Map<String, dynamic>>(exclusionLabels, (value) => value.toMap());
    map['inclusionLabels'] = pulumi.Input.encodeList<
        OSPolicyAssignmentLabelSetResponseOsconfigV1alpha,
        Map<String, dynamic>>(inclusionLabels, (value) => value.toMap());
    map['inventories'] = pulumi.Input.encodeList<
        OSPolicyAssignmentInstanceFilterInventoryResponseOsconfigV1alpha,
        Map<String, dynamic>>(inventories, (value) => value.toMap());
    map['osShortNames'] = osShortNames;
    return map;
  }

  factory OSPolicyAssignmentInstanceFilterResponseOsconfigV1alpha.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyAssignmentInstanceFilterResponseOsconfigV1alpha(
      all: map['all'] as bool,
      exclusionLabels: pulumi.Input.decodeList<
              OSPolicyAssignmentLabelSetResponseOsconfigV1alpha>(
          map['exclusionLabels'],
          (value) => OSPolicyAssignmentLabelSetResponseOsconfigV1alpha.fromMap(
              (value as Map).cast<String, dynamic>())),
      inclusionLabels: pulumi.Input.decodeList<
              OSPolicyAssignmentLabelSetResponseOsconfigV1alpha>(
          map['inclusionLabels'],
          (value) => OSPolicyAssignmentLabelSetResponseOsconfigV1alpha.fromMap(
              (value as Map).cast<String, dynamic>())),
      inventories: pulumi.Input.decodeList<
              OSPolicyAssignmentInstanceFilterInventoryResponseOsconfigV1alpha>(
          map['inventories'],
          (value) =>
              OSPolicyAssignmentInstanceFilterInventoryResponseOsconfigV1alpha
                  .fromMap((value as Map).cast<String, dynamic>())),
      osShortNames: (map['osShortNames'] as List).cast<String>(),
    );
  }
}
