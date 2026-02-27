// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_engine_disks_target_defaults_vmmigration_v1alpha1.dart';
import 'compute_engine_target_defaults_vmmigration_v1alpha1.dart';
import 'schedule_policy_vmmigration_v1alpha1.dart';
import 'target_vmdetails.dart';

/// The set of arguments for MigratingVm.
class MigratingVmVmmigrationV1alpha1Args {
  /// Details of the target Persistent Disks in Compute Engine.
  final pulumi.Input<ComputeEngineDisksTargetDefaultsVmmigrationV1alpha1>?
      computeEngineDisksTargetDefaults;

  /// Details of the target VM in Compute Engine.
  final pulumi.Input<ComputeEngineTargetDefaultsVmmigrationV1alpha1>?
      computeEngineTargetDefaults;

  /// Details of the VM in Compute Engine. Deprecated: Use compute_engine_target_defaults instead.
  final pulumi.Input<TargetVMDetails>? computeEngineVmDefaults;

  /// The description attached to the migrating VM by the user.
  final pulumi.Input<String>? description;

  /// The display name attached to the MigratingVm by the user.
  final pulumi.Input<String>? displayName;

  /// The labels of the migrating VM.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Required. The migratingVm identifier.
  final pulumi.Input<String> migratingVmId;

  /// The replication schedule policy.
  final pulumi.Input<SchedulePolicyVmmigrationV1alpha1>? policy;
  final pulumi.Input<String>? project;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  final pulumi.Input<String> sourceId;

  /// The unique ID of the VM in the source. The VM's name in vSphere can be changed, so this is not the VM's name but rather its moRef id. This id is of the form vm-.
  final pulumi.Input<String>? sourceVmId;

  /// The default configuration of the target VM that will be created in Google Cloud as a result of the migration. Deprecated: Use compute_engine_target_defaults instead.
  final pulumi.Input<TargetVMDetails>? targetDefaults;

  MigratingVmVmmigrationV1alpha1Args({
    this.computeEngineDisksTargetDefaults,
    this.computeEngineTargetDefaults,
    this.computeEngineVmDefaults,
    this.description,
    this.displayName,
    this.labels,
    this.location,
    required this.migratingVmId,
    this.policy,
    this.project,
    this.requestId,
    required this.sourceId,
    this.sourceVmId,
    this.targetDefaults,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final computeEngineDisksTargetDefaultsValue =
        computeEngineDisksTargetDefaults;
    if (computeEngineDisksTargetDefaultsValue != null) {
      map['computeEngineDisksTargetDefaults'] =
          pulumi.Input.mapOptionalInputValue<
                  ComputeEngineDisksTargetDefaultsVmmigrationV1alpha1,
                  Map<String, dynamic>>(
              computeEngineDisksTargetDefaultsValue, (value) => value.toMap());
    }
    final computeEngineTargetDefaultsValue = computeEngineTargetDefaults;
    if (computeEngineTargetDefaultsValue != null) {
      map['computeEngineTargetDefaults'] = pulumi.Input.mapOptionalInputValue<
              ComputeEngineTargetDefaultsVmmigrationV1alpha1,
              Map<String, dynamic>>(
          computeEngineTargetDefaultsValue, (value) => value.toMap());
    }
    final computeEngineVmDefaultsValue = computeEngineVmDefaults;
    if (computeEngineVmDefaultsValue != null) {
      map['computeEngineVmDefaults'] = pulumi.Input.mapOptionalInputValue<
              TargetVMDetails, Map<String, dynamic>>(
          computeEngineVmDefaultsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['migratingVmId'] = migratingVmId;
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = pulumi.Input.mapOptionalInputValue<
          SchedulePolicyVmmigrationV1alpha1,
          Map<String, dynamic>>(policyValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['sourceId'] = sourceId;
    final sourceVmIdValue = sourceVmId;
    if (sourceVmIdValue != null) {
      map['sourceVmId'] = sourceVmIdValue;
    }
    final targetDefaultsValue = targetDefaults;
    if (targetDefaultsValue != null) {
      map['targetDefaults'] = pulumi.Input.mapOptionalInputValue<
          TargetVMDetails,
          Map<String, dynamic>>(targetDefaultsValue, (value) => value.toMap());
    }
    return map;
  }

  factory MigratingVmVmmigrationV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return MigratingVmVmmigrationV1alpha1Args(
      computeEngineDisksTargetDefaults: pulumi.Input.asOptionalInput<
              ComputeEngineDisksTargetDefaultsVmmigrationV1alpha1>(
          map['computeEngineDisksTargetDefaults']),
      computeEngineTargetDefaults: pulumi.Input.asOptionalInput<
              ComputeEngineTargetDefaultsVmmigrationV1alpha1>(
          map['computeEngineTargetDefaults']),
      computeEngineVmDefaults: pulumi.Input.asOptionalInput<TargetVMDetails>(
          map['computeEngineVmDefaults']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      migratingVmId: pulumi.Input.asInput<String>(map['migratingVmId']),
      policy: pulumi.Input.asOptionalInput<SchedulePolicyVmmigrationV1alpha1>(
          map['policy']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      sourceId: pulumi.Input.asInput<String>(map['sourceId']),
      sourceVmId: pulumi.Input.asOptionalInput<String>(map['sourceVmId']),
      targetDefaults:
          pulumi.Input.asOptionalInput<TargetVMDetails>(map['targetDefaults']),
    );
  }
}
