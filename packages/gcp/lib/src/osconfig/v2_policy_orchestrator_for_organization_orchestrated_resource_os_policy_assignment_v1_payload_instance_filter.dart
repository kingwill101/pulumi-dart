// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_instance_filter_exclusion_label.dart';
import 'v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_instance_filter_inclusion_label.dart';
import 'v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_instance_filter_inventory.dart';

class V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter {
  /// Target all VMs in the project. If true, no other criteria is
  /// permitted.
  final bool? all;
  /// List of label sets used for VM exclusion.
  /// If the list has more than one label set, the VM is excluded if any
  /// of the label sets are applicable for the VM.
  /// Structure is documented below.
  final List<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterExclusionLabel>? exclusionLabels;
  /// List of label sets used for VM inclusion.
  /// If the list has more than one `LabelSet`, the VM is included if any
  /// of the label sets are applicable for the VM.
  /// Structure is documented below.
  final List<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabel>? inclusionLabels;
  /// List of inventories to select VMs.
  /// A VM is selected if its inventory data matches at least one of the
  /// following inventories.
  /// Structure is documented below.
  final List<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventory>? inventories;

  /// Creates a new [V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter].
  /// [all] Target all VMs in the project. If true, no other criteria is
  /// [exclusionLabels] List of label sets used for VM exclusion.
  /// [inclusionLabels] List of label sets used for VM inclusion.
  /// [inventories] List of inventories to select VMs.
  V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter({
    this.all,
    this.exclusionLabels,
    this.inclusionLabels,
    this.inventories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'exclusionLabels': ?exclusionLabels == null ? null : pulumi.Input.encodeList<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterExclusionLabel, Map<String, dynamic>>(exclusionLabels!, (value) => value.toMap()),
      'inclusionLabels': ?inclusionLabels == null ? null : pulumi.Input.encodeList<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabel, Map<String, dynamic>>(inclusionLabels!, (value) => value.toMap()),
      'inventories': ?inventories == null ? null : pulumi.Input.encodeList<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventory, Map<String, dynamic>>(inventories!, (value) => value.toMap()),
    };
  }

  factory V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter(
      all: map['all'] == null ? null : map['all'] as bool,
      exclusionLabels: map['exclusionLabels'] == null ? null : pulumi.Input.decodeList<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterExclusionLabel>(map['exclusionLabels'], (value) => V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterExclusionLabel.fromMap((value as Map).cast<String, dynamic>())),
      inclusionLabels: map['inclusionLabels'] == null ? null : pulumi.Input.decodeList<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabel>(map['inclusionLabels'], (value) => V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabel.fromMap((value as Map).cast<String, dynamic>())),
      inventories: map['inventories'] == null ? null : pulumi.Input.decodeList<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventory>(map['inventories'], (value) => V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventory.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

