// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_assignment_instance_filter_inventory_osconfig_v1alpha.dart';
import 'ospolicy_assignment_label_set_osconfig_v1alpha.dart';

/// Filters to select target VMs for an assignment. If more than one filter criteria is specified below, a VM will be selected if and only if it satisfies all of them.
class OSPolicyAssignmentInstanceFilterOsconfigV1alpha {
  /// Target all VMs in the project. If true, no other criteria is permitted.
  final bool? all;

  /// List of label sets used for VM exclusion. If the list has more than one label set, the VM is excluded if any of the label sets are applicable for the VM.
  final List<OSPolicyAssignmentLabelSetOsconfigV1alpha>? exclusionLabels;

  /// List of label sets used for VM inclusion. If the list has more than one `LabelSet`, the VM is included if any of the label sets are applicable for the VM.
  final List<OSPolicyAssignmentLabelSetOsconfigV1alpha>? inclusionLabels;

  /// List of inventories to select VMs. A VM is selected if its inventory data matches at least one of the following inventories.
  final List<OSPolicyAssignmentInstanceFilterInventoryOsconfigV1alpha>?
  inventories;

  /// Deprecated. Use the `inventories` field instead. A VM is selected if it's OS short name matches with any of the values provided in this list.
  final List<String>? osShortNames;

  /// Creates a new [OSPolicyAssignmentInstanceFilterOsconfigV1alpha].
  /// [all] Target all VMs in the project. If true, no other criteria is permitted.
  /// [exclusionLabels] List of label sets used for VM exclusion. If the list has more than one label set, the VM is excluded if any of the label sets are applicable for the VM.
  /// [inclusionLabels] List of label sets used for VM inclusion. If the list has more than one `LabelSet`, the VM is included if any of the label sets are applicable for the VM.
  /// [inventories] List of inventories to select VMs. A VM is selected if its inventory data matches at least one of the following inventories.
  /// [osShortNames] Deprecated. Use the `inventories` field instead. A VM is selected if it's OS short name matches with any of the values provided in this list.
  OSPolicyAssignmentInstanceFilterOsconfigV1alpha({
    this.all,
    this.exclusionLabels,
    this.inclusionLabels,
    this.inventories,
    this.osShortNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'exclusionLabels': ?exclusionLabels == null
          ? null
          : pulumi.Input.encodeList<
              OSPolicyAssignmentLabelSetOsconfigV1alpha,
              Map<String, dynamic>
            >(exclusionLabels!, (value) => value.toMap()),
      'inclusionLabels': ?inclusionLabels == null
          ? null
          : pulumi.Input.encodeList<
              OSPolicyAssignmentLabelSetOsconfigV1alpha,
              Map<String, dynamic>
            >(inclusionLabels!, (value) => value.toMap()),
      'inventories': ?inventories == null
          ? null
          : pulumi.Input.encodeList<
              OSPolicyAssignmentInstanceFilterInventoryOsconfigV1alpha,
              Map<String, dynamic>
            >(inventories!, (value) => value.toMap()),
      'osShortNames': ?osShortNames,
    };
  }

  factory OSPolicyAssignmentInstanceFilterOsconfigV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return OSPolicyAssignmentInstanceFilterOsconfigV1alpha(
      all: map['all'] == null ? null : map['all'] as bool,
      exclusionLabels: map['exclusionLabels'] == null
          ? null
          : pulumi.Input.decodeList<OSPolicyAssignmentLabelSetOsconfigV1alpha>(
              map['exclusionLabels'],
              (value) => OSPolicyAssignmentLabelSetOsconfigV1alpha.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      inclusionLabels: map['inclusionLabels'] == null
          ? null
          : pulumi.Input.decodeList<OSPolicyAssignmentLabelSetOsconfigV1alpha>(
              map['inclusionLabels'],
              (value) => OSPolicyAssignmentLabelSetOsconfigV1alpha.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      inventories: map['inventories'] == null
          ? null
          : pulumi.Input.decodeList<
              OSPolicyAssignmentInstanceFilterInventoryOsconfigV1alpha
            >(
              map['inventories'],
              (value) =>
                  OSPolicyAssignmentInstanceFilterInventoryOsconfigV1alpha.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      osShortNames: map['osShortNames'] == null
          ? null
          : (map['osShortNames'] as List).cast<String>(),
    );
  }
}
