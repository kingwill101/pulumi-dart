// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../unit_operation_provision/unit_operation_provision.dart';
import '../unit_operation_upgrade/unit_operation_upgrade.dart';

/// The set of arguments for UnitOperation.
class UnitOperationArgs {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Deprovision is the unit operation that deprovision the underlying
  /// resources represented by a Unit. Can only execute if the Unit is currently
  /// provisioned.
  final pulumi.Input<Map<String, dynamic>>? deprovision;

  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Provision is the unit operation that provision the underlying resources
  /// represented by a Unit. Can only execute if the Unit is not currently
  /// provisioned.
  /// Structure is documented below.
  final pulumi.Input<UnitOperationProvision>? provision;

  /// The Unit a given UnitOperation will act upon.
  final pulumi.Input<String> unit;

  /// The ID value for the new unit operation.
  final pulumi.Input<String> unitOperationId;

  /// Upgrade is the unit operation that upgrades a provisioned unit, which may
  /// also include the underlying resources represented by a Unit. Can only execute
  /// if the Unit is currently provisioned.
  /// Structure is documented below.
  final pulumi.Input<UnitOperationUpgrade>? upgrade;

  /// If true, wait for the UnitOperation to reach a terminal state (SUCCEEDED, FAILED, CANCELLED)
  /// before completing the apply.
  final pulumi.Input<bool>? waitForCompletion;

  UnitOperationArgs({
    this.annotations,
    this.deprovision,
    this.labels,
    required this.location,
    this.project,
    this.provision,
    required this.unit,
    required this.unitOperationId,
    this.upgrade,
    this.waitForCompletion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final deprovisionValue = deprovision;
    if (deprovisionValue != null) {
      map['deprovision'] = deprovisionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final provisionValue = provision;
    if (provisionValue != null) {
      map['provision'] = pulumi.Input.mapOptionalInputValue<
          UnitOperationProvision,
          Map<String, dynamic>>(provisionValue, (value) => value.toMap());
    }
    map['unit'] = unit;
    map['unitOperationId'] = unitOperationId;
    final upgradeValue = upgrade;
    if (upgradeValue != null) {
      map['upgrade'] = pulumi.Input.mapOptionalInputValue<UnitOperationUpgrade,
          Map<String, dynamic>>(upgradeValue, (value) => value.toMap());
    }
    final waitForCompletionValue = waitForCompletion;
    if (waitForCompletionValue != null) {
      map['waitForCompletion'] = waitForCompletionValue;
    }
    return map;
  }

  factory UnitOperationArgs.fromMap(Map<String, dynamic> map) {
    return UnitOperationArgs(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      deprovision: pulumi.Input.asOptionalInput<Map<String, dynamic>>(
          map['deprovision']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      provision: pulumi.Input.asOptionalInput<UnitOperationProvision>(
          map['provision']),
      unit: pulumi.Input.asInput<String>(map['unit']),
      unitOperationId: pulumi.Input.asInput<String>(map['unitOperationId']),
      upgrade:
          pulumi.Input.asOptionalInput<UnitOperationUpgrade>(map['upgrade']),
      waitForCompletion:
          pulumi.Input.asOptionalInput<bool>(map['waitForCompletion']),
    );
  }
}
