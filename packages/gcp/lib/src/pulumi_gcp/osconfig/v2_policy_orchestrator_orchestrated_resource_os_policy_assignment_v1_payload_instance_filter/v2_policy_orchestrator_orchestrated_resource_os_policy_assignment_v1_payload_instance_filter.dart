// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_instance_filter_exclusion_label/v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_instance_filter_exclusion_label.dart';
import '../v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_instance_filter_inclusion_label/v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_instance_filter_inclusion_label.dart';
import '../v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_instance_filter_inventory/v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_instance_filter_inventory.dart';

class V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter {
  /// Target all VMs in the project. If true, no other criteria is
  /// permitted.
  final bool? all;

  /// List of label sets used for VM exclusion.
  /// If the list has more than one label set, the VM is excluded if any
  /// of the label sets are applicable for the VM.
  /// Structure is documented below.
  final List<
          V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterExclusionLabel>?
      exclusionLabels;

  /// List of label sets used for VM inclusion.
  /// If the list has more than one `LabelSet`, the VM is included if any
  /// of the label sets are applicable for the VM.
  /// Structure is documented below.
  final List<
          V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabel>?
      inclusionLabels;

  /// List of inventories to select VMs.
  /// A VM is selected if its inventory data matches at least one of the
  /// following inventories.
  /// Structure is documented below.
  final List<
          V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventory>?
      inventories;

  V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter({
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
      map['exclusionLabels'] = Input.encodeList<
          V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterExclusionLabel,
          Map<String, dynamic>>(exclusionLabelsValue, (value) => value.toMap());
    }
    final inclusionLabelsValue = inclusionLabels;
    if (inclusionLabelsValue != null) {
      map['inclusionLabels'] = Input.encodeList<
          V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabel,
          Map<String, dynamic>>(inclusionLabelsValue, (value) => value.toMap());
    }
    final inventoriesValue = inventories;
    if (inventoriesValue != null) {
      map['inventories'] = Input.encodeList<
          V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventory,
          Map<String, dynamic>>(inventoriesValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter(
      all: map['all'] == null ? null : map['all'] as bool,
      exclusionLabels: map['exclusionLabels'] == null
          ? null
          : Input.decodeList<
                  V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterExclusionLabel>(
              map['exclusionLabels'],
              (value) =>
                  V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterExclusionLabel
                      .fromMap((value as Map).cast<String, dynamic>())),
      inclusionLabels: map['inclusionLabels'] == null
          ? null
          : Input.decodeList<
                  V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabel>(
              map['inclusionLabels'],
              (value) =>
                  V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabel
                      .fromMap((value as Map).cast<String, dynamic>())),
      inventories: map['inventories'] == null
          ? null
          : Input.decodeList<
                  V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventory>(
              map['inventories'],
              (value) =>
                  V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventory
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
