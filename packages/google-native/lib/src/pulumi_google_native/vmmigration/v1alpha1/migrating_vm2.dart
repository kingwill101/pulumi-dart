import 'package:pulumi/pulumi.dart';
import 'aws_source_vm_details_response2.dart';
import 'azure_source_vm_details_response2.dart';
import 'clone_job_response2.dart';
import 'compute_engine_disks_target_defaults_response2.dart';
import 'compute_engine_target_defaults_response2.dart';
import 'cutover_forecast_response2.dart';
import 'cutover_job_response2.dart';
import 'migrating_vm_args2.dart';
import 'replication_cycle_response2.dart';
import 'replication_sync_response2.dart';
import 'schedule_policy_response2.dart';
import 'status_response31.dart';
import 'target_vmdetails_response.dart';
import 'vmware_source_vm_details_response2.dart';

/// Creates a new MigratingVm in a given Source.
/// Auto-naming is currently not supported for this resource.
class MigratingVm2 extends CustomResource {
  /// Details of the VM from an AWS source.
  late final Output<AwsSourceVmDetailsResponse2> awsSourceVmDetails;

  /// Details of the VM from an Azure source.
  late final Output<AzureSourceVmDetailsResponse2> azureSourceVmDetails;

  /// Details of the target Persistent Disks in Compute Engine.
  late final Output<ComputeEngineDisksTargetDefaultsResponse2>
      computeEngineDisksTargetDefaults;

  /// Details of the target VM in Compute Engine.
  late final Output<ComputeEngineTargetDefaultsResponse2>
      computeEngineTargetDefaults;

  /// Details of the VM in Compute Engine. Deprecated: Use compute_engine_target_defaults instead.
  late final Output<TargetVMDetailsResponse> computeEngineVmDefaults;

  /// The time the migrating VM was created (this refers to this resource and not to the time it was installed in the source).
  late final Output<String> createTime;

  /// Details of the current running replication cycle.
  late final Output<ReplicationCycleResponse2> currentSyncInfo;

  /// Provides details of future CutoverJobs of a MigratingVm. Set to empty when cutover forecast is unavailable.
  late final Output<CutoverForecastResponse2> cutoverForecast;

  /// The description attached to the migrating VM by the user.
  late final Output<String> description;

  /// The display name attached to the MigratingVm by the user.
  late final Output<String> displayName;

  /// Provides details on the state of the Migrating VM in case of an error in replication.
  late final Output<StatusResponse31> error;

  /// The group this migrating vm is included in, if any. The group is represented by the full path of the appropriate Group resource.
  late final Output<String> group;

  /// The labels of the migrating VM.
  late final Output<Map<String, String>> labels;

  /// Details of the last replication cycle. This will be updated whenever a replication cycle is finished and is not to be confused with last_sync which is only updated on successful replication cycles.
  late final Output<ReplicationCycleResponse2> lastReplicationCycle;

  /// The most updated snapshot created time in the source that finished replication.
  late final Output<ReplicationSyncResponse2> lastSync;
  late final Output<String> location;

  /// Required. The migratingVm identifier.
  late final Output<String> migratingVmId;

  /// The identifier of the MigratingVm.
  late final Output<String> name;

  /// The replication schedule policy.
  late final Output<SchedulePolicyResponse2> policy;
  late final Output<String> project;

  /// The recent clone jobs performed on the migrating VM. This field holds the vm's last completed clone job and the vm's running clone job, if one exists. Note: To have this field populated you need to explicitly request it via the "view" parameter of the Get/List request.
  late final Output<List<CloneJobResponse2>> recentCloneJobs;

  /// The recent cutover jobs performed on the migrating VM. This field holds the vm's last completed cutover job and the vm's running cutover job, if one exists. Note: To have this field populated you need to explicitly request it via the "view" parameter of the Get/List request.
  late final Output<List<CutoverJobResponse2>> recentCutoverJobs;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;
  late final Output<String> sourceId;

  /// The unique ID of the VM in the source. The VM's name in vSphere can be changed, so this is not the VM's name but rather its moRef id. This id is of the form vm-.
  late final Output<String> sourceVmId;

  /// State of the MigratingVm.
  late final Output<String> state;

  /// The last time the migrating VM state was updated.
  late final Output<String> stateTime;

  /// The default configuration of the target VM that will be created in Google Cloud as a result of the migration. Deprecated: Use compute_engine_target_defaults instead.
  late final Output<TargetVMDetailsResponse> targetDefaults;

  /// The last time the migrating VM resource was updated.
  late final Output<String> updateTime;

  /// Details of the VM from a Vmware source.
  late final Output<VmwareSourceVmDetailsResponse2> vmwareSourceVmDetails;

  MigratingVm2(
    String name, {
    MigratingVmArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:vmmigration/v1alpha1:MigratingVm',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.awsSourceVmDetails =
        Output.createUnknown<AwsSourceVmDetailsResponse2>();
    this.azureSourceVmDetails =
        Output.createUnknown<AzureSourceVmDetailsResponse2>();
    this.computeEngineDisksTargetDefaults =
        Output.createUnknown<ComputeEngineDisksTargetDefaultsResponse2>();
    this.computeEngineTargetDefaults =
        Output.createUnknown<ComputeEngineTargetDefaultsResponse2>();
    this.computeEngineVmDefaults =
        Output.createUnknown<TargetVMDetailsResponse>();
    this.createTime = Output.createUnknown<String>();
    this.currentSyncInfo = Output.createUnknown<ReplicationCycleResponse2>();
    this.cutoverForecast = Output.createUnknown<CutoverForecastResponse2>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.error = Output.createUnknown<StatusResponse31>();
    this.group = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.lastReplicationCycle =
        Output.createUnknown<ReplicationCycleResponse2>();
    this.lastSync = Output.createUnknown<ReplicationSyncResponse2>();
    this.location = Output.createUnknown<String>();
    this.migratingVmId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.policy = Output.createUnknown<SchedulePolicyResponse2>();
    this.project = Output.createUnknown<String>();
    this.recentCloneJobs = Output.createUnknown<List<CloneJobResponse2>>();
    this.recentCutoverJobs = Output.createUnknown<List<CutoverJobResponse2>>();
    this.requestId = Output.createUnknown<String?>();
    this.sourceId = Output.createUnknown<String>();
    this.sourceVmId = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.stateTime = Output.createUnknown<String>();
    this.targetDefaults = Output.createUnknown<TargetVMDetailsResponse>();
    this.updateTime = Output.createUnknown<String>();
    this.vmwareSourceVmDetails =
        Output.createUnknown<VmwareSourceVmDetailsResponse2>();
  }
}
