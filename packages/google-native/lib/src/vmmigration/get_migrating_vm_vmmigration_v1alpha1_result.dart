// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_source_vm_details_response_vmmigration_v1alpha1.dart';
import 'azure_source_vm_details_response_vmmigration_v1alpha1.dart';
import 'clone_job_response_vmmigration_v1alpha1.dart';
import 'compute_engine_disks_target_defaults_response_vmmigration_v1alpha1.dart';
import 'compute_engine_target_defaults_response_vmmigration_v1alpha1.dart';
import 'cutover_forecast_response_vmmigration_v1alpha1.dart';
import 'cutover_job_response_vmmigration_v1alpha1.dart';
import 'replication_cycle_response_vmmigration_v1alpha1.dart';
import 'replication_sync_response_vmmigration_v1alpha1.dart';
import 'schedule_policy_response_vmmigration_v1alpha1.dart';
import 'status_response_vmmigration_v1alpha1.dart';
import 'target_vmdetails_response.dart';
import 'vmware_source_vm_details_response_vmmigration_v1alpha1.dart';

/// Result data returned by getMigratingVm.
class GetMigratingVmVmmigrationV1alpha1Result {
  /// Details of the VM from an AWS source.
  final AwsSourceVmDetailsResponseVmmigrationV1alpha1 awsSourceVmDetails;

  /// Details of the VM from an Azure source.
  final AzureSourceVmDetailsResponseVmmigrationV1alpha1 azureSourceVmDetails;

  /// Details of the target Persistent Disks in Compute Engine.
  final ComputeEngineDisksTargetDefaultsResponseVmmigrationV1alpha1
      computeEngineDisksTargetDefaults;

  /// Details of the target VM in Compute Engine.
  final ComputeEngineTargetDefaultsResponseVmmigrationV1alpha1
      computeEngineTargetDefaults;

  /// Details of the VM in Compute Engine. Deprecated: Use compute_engine_target_defaults instead.
  final TargetVMDetailsResponse computeEngineVmDefaults;

  /// The time the migrating VM was created (this refers to this resource and not to the time it was installed in the source).
  final String createTime;

  /// Details of the current running replication cycle.
  final ReplicationCycleResponseVmmigrationV1alpha1 currentSyncInfo;

  /// Provides details of future CutoverJobs of a MigratingVm. Set to empty when cutover forecast is unavailable.
  final CutoverForecastResponseVmmigrationV1alpha1 cutoverForecast;

  /// The description attached to the migrating VM by the user.
  final String description;

  /// The display name attached to the MigratingVm by the user.
  final String displayName;

  /// Provides details on the state of the Migrating VM in case of an error in replication.
  final StatusResponseVmmigrationV1alpha1 error;

  /// The group this migrating vm is included in, if any. The group is represented by the full path of the appropriate Group resource.
  final String group;

  /// The labels of the migrating VM.
  final Map<String, String> labels;

  /// Details of the last replication cycle. This will be updated whenever a replication cycle is finished and is not to be confused with last_sync which is only updated on successful replication cycles.
  final ReplicationCycleResponseVmmigrationV1alpha1 lastReplicationCycle;

  /// The most updated snapshot created time in the source that finished replication.
  final ReplicationSyncResponseVmmigrationV1alpha1 lastSync;

  /// The identifier of the MigratingVm.
  final String name;

  /// The replication schedule policy.
  final SchedulePolicyResponseVmmigrationV1alpha1 policy;

  /// The recent clone jobs performed on the migrating VM. This field holds the vm's last completed clone job and the vm's running clone job, if one exists. Note: To have this field populated you need to explicitly request it via the "view" parameter of the Get/List request.
  final List<CloneJobResponseVmmigrationV1alpha1> recentCloneJobs;

  /// The recent cutover jobs performed on the migrating VM. This field holds the vm's last completed cutover job and the vm's running cutover job, if one exists. Note: To have this field populated you need to explicitly request it via the "view" parameter of the Get/List request.
  final List<CutoverJobResponseVmmigrationV1alpha1> recentCutoverJobs;

  /// The unique ID of the VM in the source. The VM's name in vSphere can be changed, so this is not the VM's name but rather its moRef id. This id is of the form vm-.
  final String sourceVmId;

  /// State of the MigratingVm.
  final String state;

  /// The last time the migrating VM state was updated.
  final String stateTime;

  /// The default configuration of the target VM that will be created in Google Cloud as a result of the migration. Deprecated: Use compute_engine_target_defaults instead.
  final TargetVMDetailsResponse targetDefaults;

  /// The last time the migrating VM resource was updated.
  final String updateTime;

  /// Details of the VM from a Vmware source.
  final VmwareSourceVmDetailsResponseVmmigrationV1alpha1 vmwareSourceVmDetails;

  /// Creates a new [GetMigratingVmVmmigrationV1alpha1Result].
  /// [awsSourceVmDetails] Details of the VM from an AWS source.
  /// [azureSourceVmDetails] Details of the VM from an Azure source.
  /// [computeEngineDisksTargetDefaults] Details of the target Persistent Disks in Compute Engine.
  /// [computeEngineTargetDefaults] Details of the target VM in Compute Engine.
  /// [computeEngineVmDefaults] Details of the VM in Compute Engine. Deprecated: Use compute_engine_target_defaults instead.
  /// [createTime] The time the migrating VM was created (this refers to this resource and not to the time it was installed in the source).
  /// [currentSyncInfo] Details of the current running replication cycle.
  /// [cutoverForecast] Provides details of future CutoverJobs of a MigratingVm. Set to empty when cutover forecast is unavailable.
  /// [description] The description attached to the migrating VM by the user.
  /// [displayName] The display name attached to the MigratingVm by the user.
  /// [error] Provides details on the state of the Migrating VM in case of an error in replication.
  /// [group] The group this migrating vm is included in, if any. The group is represented by the full path of the appropriate Group resource.
  /// [labels] The labels of the migrating VM.
  /// [lastReplicationCycle] Details of the last replication cycle. This will be updated whenever a replication cycle is finished and is not to be confused with last_sync which is only updated on successful replication cycles.
  /// [lastSync] The most updated snapshot created time in the source that finished replication.
  /// [name] The identifier of the MigratingVm.
  /// [policy] The replication schedule policy.
  /// [recentCloneJobs] The recent clone jobs performed on the migrating VM. This field holds the vm's last completed clone job and the vm's running clone job, if one exists. Note: To have this field populated you need to explicitly request it via the "view" parameter of the Get/List request.
  /// [recentCutoverJobs] The recent cutover jobs performed on the migrating VM. This field holds the vm's last completed cutover job and the vm's running cutover job, if one exists. Note: To have this field populated you need to explicitly request it via the "view" parameter of the Get/List request.
  /// [sourceVmId] The unique ID of the VM in the source. The VM's name in vSphere can be changed, so this is not the VM's name but rather its moRef id. This id is of the form vm-.
  /// [state] State of the MigratingVm.
  /// [stateTime] The last time the migrating VM state was updated.
  /// [targetDefaults] The default configuration of the target VM that will be created in Google Cloud as a result of the migration. Deprecated: Use compute_engine_target_defaults instead.
  /// [updateTime] The last time the migrating VM resource was updated.
  /// [vmwareSourceVmDetails] Details of the VM from a Vmware source.
  GetMigratingVmVmmigrationV1alpha1Result({
    required this.awsSourceVmDetails,
    required this.azureSourceVmDetails,
    required this.computeEngineDisksTargetDefaults,
    required this.computeEngineTargetDefaults,
    required this.computeEngineVmDefaults,
    required this.createTime,
    required this.currentSyncInfo,
    required this.cutoverForecast,
    required this.description,
    required this.displayName,
    required this.error,
    required this.group,
    required this.labels,
    required this.lastReplicationCycle,
    required this.lastSync,
    required this.name,
    required this.policy,
    required this.recentCloneJobs,
    required this.recentCutoverJobs,
    required this.sourceVmId,
    required this.state,
    required this.stateTime,
    required this.targetDefaults,
    required this.updateTime,
    required this.vmwareSourceVmDetails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['awsSourceVmDetails'] = awsSourceVmDetails.toMap();
    map['azureSourceVmDetails'] = azureSourceVmDetails.toMap();
    map['computeEngineDisksTargetDefaults'] =
        computeEngineDisksTargetDefaults.toMap();
    map['computeEngineTargetDefaults'] = computeEngineTargetDefaults.toMap();
    map['computeEngineVmDefaults'] = computeEngineVmDefaults.toMap();
    map['createTime'] = createTime;
    map['currentSyncInfo'] = currentSyncInfo.toMap();
    map['cutoverForecast'] = cutoverForecast.toMap();
    map['description'] = description;
    map['displayName'] = displayName;
    map['error'] = error.toMap();
    map['group'] = group;
    map['labels'] = labels;
    map['lastReplicationCycle'] = lastReplicationCycle.toMap();
    map['lastSync'] = lastSync.toMap();
    map['name'] = name;
    map['policy'] = policy.toMap();
    map['recentCloneJobs'] = pulumi.Input.encodeList<
        CloneJobResponseVmmigrationV1alpha1,
        Map<String, dynamic>>(recentCloneJobs, (value) => value.toMap());
    map['recentCutoverJobs'] = pulumi.Input.encodeList<
        CutoverJobResponseVmmigrationV1alpha1,
        Map<String, dynamic>>(recentCutoverJobs, (value) => value.toMap());
    map['sourceVmId'] = sourceVmId;
    map['state'] = state;
    map['stateTime'] = stateTime;
    map['targetDefaults'] = targetDefaults.toMap();
    map['updateTime'] = updateTime;
    map['vmwareSourceVmDetails'] = vmwareSourceVmDetails.toMap();
    return map;
  }

  factory GetMigratingVmVmmigrationV1alpha1Result.fromMap(
      Map<String, dynamic> map) {
    return GetMigratingVmVmmigrationV1alpha1Result(
      awsSourceVmDetails: AwsSourceVmDetailsResponseVmmigrationV1alpha1.fromMap(
          (map['awsSourceVmDetails'] as Map).cast<String, dynamic>()),
      azureSourceVmDetails:
          AzureSourceVmDetailsResponseVmmigrationV1alpha1.fromMap(
              (map['azureSourceVmDetails'] as Map).cast<String, dynamic>()),
      computeEngineDisksTargetDefaults:
          ComputeEngineDisksTargetDefaultsResponseVmmigrationV1alpha1.fromMap(
              (map['computeEngineDisksTargetDefaults'] as Map)
                  .cast<String, dynamic>()),
      computeEngineTargetDefaults:
          ComputeEngineTargetDefaultsResponseVmmigrationV1alpha1.fromMap(
              (map['computeEngineTargetDefaults'] as Map)
                  .cast<String, dynamic>()),
      computeEngineVmDefaults: TargetVMDetailsResponse.fromMap(
          (map['computeEngineVmDefaults'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      currentSyncInfo: ReplicationCycleResponseVmmigrationV1alpha1.fromMap(
          (map['currentSyncInfo'] as Map).cast<String, dynamic>()),
      cutoverForecast: CutoverForecastResponseVmmigrationV1alpha1.fromMap(
          (map['cutoverForecast'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      error: StatusResponseVmmigrationV1alpha1.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      group: map['group'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      lastReplicationCycle: ReplicationCycleResponseVmmigrationV1alpha1.fromMap(
          (map['lastReplicationCycle'] as Map).cast<String, dynamic>()),
      lastSync: ReplicationSyncResponseVmmigrationV1alpha1.fromMap(
          (map['lastSync'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      policy: SchedulePolicyResponseVmmigrationV1alpha1.fromMap(
          (map['policy'] as Map).cast<String, dynamic>()),
      recentCloneJobs:
          pulumi.Input.decodeList<CloneJobResponseVmmigrationV1alpha1>(
              map['recentCloneJobs'],
              (value) => CloneJobResponseVmmigrationV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      recentCutoverJobs:
          pulumi.Input.decodeList<CutoverJobResponseVmmigrationV1alpha1>(
              map['recentCutoverJobs'],
              (value) => CutoverJobResponseVmmigrationV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sourceVmId: map['sourceVmId'] as String,
      state: map['state'] as String,
      stateTime: map['stateTime'] as String,
      targetDefaults: TargetVMDetailsResponse.fromMap(
          (map['targetDefaults'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
      vmwareSourceVmDetails:
          VmwareSourceVmDetailsResponseVmmigrationV1alpha1.fromMap(
              (map['vmwareSourceVmDetails'] as Map).cast<String, dynamic>()),
    );
  }
}
