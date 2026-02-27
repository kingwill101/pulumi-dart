// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'ospolicy_assignment_instance_filter_inventory_response.dart';
import 'ospolicy_assignment_label_set_response.dart';

/// Filters to select target VMs for an assignment. If more than one filter criteria is specified below, a VM will be selected if and only if it satisfies all of them.
class OSPolicyAssignmentInstanceFilterResponse {
  /// Target all VMs in the project. If true, no other criteria is permitted.
  final bool all;

  /// List of label sets used for VM exclusion. If the list has more than one label set, the VM is excluded if any of the label sets are applicable for the VM.
  final List<OSPolicyAssignmentLabelSetResponse> exclusionLabels;

  /// List of label sets used for VM inclusion. If the list has more than one `LabelSet`, the VM is included if any of the label sets are applicable for the VM.
  final List<OSPolicyAssignmentLabelSetResponse> inclusionLabels;

  /// List of inventories to select VMs. A VM is selected if its inventory data matches at least one of the following inventories.
  final List<OSPolicyAssignmentInstanceFilterInventoryResponse> inventories;

  OSPolicyAssignmentInstanceFilterResponse({
    required this.all,
    required this.exclusionLabels,
    required this.inclusionLabels,
    required this.inventories,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['all'] = all;
    map['exclusionLabels'] = Input.encodeList<
        OSPolicyAssignmentLabelSetResponse,
        Map<String, dynamic>>(exclusionLabels, (value) => value.toMap());
    map['inclusionLabels'] = Input.encodeList<
        OSPolicyAssignmentLabelSetResponse,
        Map<String, dynamic>>(inclusionLabels, (value) => value.toMap());
    map['inventories'] = Input.encodeList<
        OSPolicyAssignmentInstanceFilterInventoryResponse,
        Map<String, dynamic>>(inventories, (value) => value.toMap());
    return map;
  }

  factory OSPolicyAssignmentInstanceFilterResponse.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyAssignmentInstanceFilterResponse(
      all: map['all'] as bool,
      exclusionLabels: Input.decodeList<OSPolicyAssignmentLabelSetResponse>(
          map['exclusionLabels'],
          (value) => OSPolicyAssignmentLabelSetResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      inclusionLabels: Input.decodeList<OSPolicyAssignmentLabelSetResponse>(
          map['inclusionLabels'],
          (value) => OSPolicyAssignmentLabelSetResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      inventories:
          Input.decodeList<OSPolicyAssignmentInstanceFilterInventoryResponse>(
              map['inventories'],
              (value) =>
                  OSPolicyAssignmentInstanceFilterInventoryResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
