// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'compute_engine_disks_target_defaults.dart';
import 'compute_engine_target_defaults.dart';
import 'schedule_policy.dart';

/// The set of arguments for MigratingVm.
class MigratingVmArgs {
  /// Details of the target Persistent Disks in Compute Engine.
  final Input<ComputeEngineDisksTargetDefaults>?
      computeEngineDisksTargetDefaults;

  /// Details of the target VM in Compute Engine.
  final Input<ComputeEngineTargetDefaults>? computeEngineTargetDefaults;

  /// The description attached to the migrating VM by the user.
  final Input<String>? description;

  /// The display name attached to the MigratingVm by the user.
  final Input<String>? displayName;

  /// The labels of the migrating VM.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Required. The migratingVm identifier.
  final Input<String> migratingVmId;

  /// The replication schedule policy.
  final Input<SchedulePolicy>? policy;
  final Input<String>? project;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;
  final Input<String> sourceId;

  /// The unique ID of the VM in the source. The VM's name in vSphere can be changed, so this is not the VM's name but rather its moRef id. This id is of the form vm-.
  final Input<String>? sourceVmId;

  MigratingVmArgs({
    this.computeEngineDisksTargetDefaults,
    this.computeEngineTargetDefaults,
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
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final computeEngineDisksTargetDefaultsValue =
        computeEngineDisksTargetDefaults;
    if (computeEngineDisksTargetDefaultsValue != null) {
      map['computeEngineDisksTargetDefaults'] = Input.mapOptionalInputValue<
              ComputeEngineDisksTargetDefaults, Map<String, dynamic>>(
          computeEngineDisksTargetDefaultsValue, (value) => value.toMap());
    }
    final computeEngineTargetDefaultsValue = computeEngineTargetDefaults;
    if (computeEngineTargetDefaultsValue != null) {
      map['computeEngineTargetDefaults'] = Input.mapOptionalInputValue<
              ComputeEngineTargetDefaults, Map<String, dynamic>>(
          computeEngineTargetDefaultsValue, (value) => value.toMap());
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
      map['policy'] =
          Input.mapOptionalInputValue<SchedulePolicy, Map<String, dynamic>>(
              policyValue, (value) => value.toMap());
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
    return map;
  }

  factory MigratingVmArgs.fromMap(Map<String, dynamic> map) {
    return MigratingVmArgs(
      computeEngineDisksTargetDefaults:
          Input.asOptionalInput<ComputeEngineDisksTargetDefaults>(
              map['computeEngineDisksTargetDefaults']),
      computeEngineTargetDefaults:
          Input.asOptionalInput<ComputeEngineTargetDefaults>(
              map['computeEngineTargetDefaults']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      migratingVmId: Input.asInput<String>(map['migratingVmId']),
      policy: Input.asOptionalInput<SchedulePolicy>(map['policy']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      sourceId: Input.asInput<String>(map['sourceId']),
      sourceVmId: Input.asOptionalInput<String>(map['sourceVmId']),
    );
  }
}
