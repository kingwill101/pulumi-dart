import 'package:pulumi/pulumi.dart';
import 'aws_source_vm_details_response.dart';
import 'azure_source_vm_details_response.dart';
import 'clone_job_response.dart';
import 'compute_engine_disks_target_defaults_response.dart';
import 'compute_engine_target_defaults_response.dart';
import 'cutover_forecast_response.dart';
import 'cutover_job_response.dart';
import 'migrating_vm_args.dart';
import 'replication_cycle_response.dart';
import 'replication_sync_response.dart';
import 'schedule_policy_response.dart';
import 'status_response30.dart';
import 'vmware_source_vm_details_response.dart';

/// Creates a new MigratingVm in a given Source.
/// Auto-naming is currently not supported for this resource.
class MigratingVm extends CustomResource {
  /// Details of the VM from an AWS source.
  late final Output<AwsSourceVmDetailsResponse> awsSourceVmDetails;

  /// Details of the VM from an Azure source.
  late final Output<AzureSourceVmDetailsResponse> azureSourceVmDetails;

  /// Details of the target Persistent Disks in Compute Engine.
  late final Output<ComputeEngineDisksTargetDefaultsResponse>
      computeEngineDisksTargetDefaults;

  /// Details of the target VM in Compute Engine.
  late final Output<ComputeEngineTargetDefaultsResponse>
      computeEngineTargetDefaults;

  /// The time the migrating VM was created (this refers to this resource and not to the time it was installed in the source).
  late final Output<String> createTime;

  /// Details of the current running replication cycle.
  late final Output<ReplicationCycleResponse> currentSyncInfo;

  /// Provides details of future CutoverJobs of a MigratingVm. Set to empty when cutover forecast is unavailable.
  late final Output<CutoverForecastResponse> cutoverForecast;

  /// The description attached to the migrating VM by the user.
  late final Output<String> description;

  /// The display name attached to the MigratingVm by the user.
  late final Output<String> displayName;

  /// Provides details on the state of the Migrating VM in case of an error in replication.
  late final Output<StatusResponse30> error;

  /// The group this migrating vm is included in, if any. The group is represented by the full path of the appropriate Group resource.
  late final Output<String> group;

  /// The labels of the migrating VM.
  late final Output<Map<String, String>> labels;

  /// Details of the last replication cycle. This will be updated whenever a replication cycle is finished and is not to be confused with last_sync which is only updated on successful replication cycles.
  late final Output<ReplicationCycleResponse> lastReplicationCycle;

  /// The most updated snapshot created time in the source that finished replication.
  late final Output<ReplicationSyncResponse> lastSync;
  late final Output<String> location;

  /// Required. The migratingVm identifier.
  late final Output<String> migratingVmId;

  /// The identifier of the MigratingVm.
  late final Output<String> name;

  /// The replication schedule policy.
  late final Output<SchedulePolicyResponse> policy;
  late final Output<String> project;

  /// The recent clone jobs performed on the migrating VM. This field holds the vm's last completed clone job and the vm's running clone job, if one exists. Note: To have this field populated you need to explicitly request it via the "view" parameter of the Get/List request.
  late final Output<List<CloneJobResponse>> recentCloneJobs;

  /// The recent cutover jobs performed on the migrating VM. This field holds the vm's last completed cutover job and the vm's running cutover job, if one exists. Note: To have this field populated you need to explicitly request it via the "view" parameter of the Get/List request.
  late final Output<List<CutoverJobResponse>> recentCutoverJobs;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;
  late final Output<String> sourceId;

  /// The unique ID of the VM in the source. The VM's name in vSphere can be changed, so this is not the VM's name but rather its moRef id. This id is of the form vm-.
  late final Output<String> sourceVmId;

  /// State of the MigratingVm.
  late final Output<String> state;

  /// The last time the migrating VM state was updated.
  late final Output<String> stateTime;

  /// The last time the migrating VM resource was updated.
  late final Output<String> updateTime;

  /// Details of the VM from a Vmware source.
  late final Output<VmwareSourceVmDetailsResponse> vmwareSourceVmDetails;

  MigratingVm(
    String name, {
    MigratingVmArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:vmmigration/v1:MigratingVm',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.awsSourceVmDetails =
        Output.createUnknown<AwsSourceVmDetailsResponse>();
    this.azureSourceVmDetails =
        Output.createUnknown<AzureSourceVmDetailsResponse>();
    this.computeEngineDisksTargetDefaults =
        Output.createUnknown<ComputeEngineDisksTargetDefaultsResponse>();
    this.computeEngineTargetDefaults =
        Output.createUnknown<ComputeEngineTargetDefaultsResponse>();
    this.createTime = Output.createUnknown<String>();
    this.currentSyncInfo = Output.createUnknown<ReplicationCycleResponse>();
    this.cutoverForecast = Output.createUnknown<CutoverForecastResponse>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.error = Output.createUnknown<StatusResponse30>();
    this.group = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.lastReplicationCycle =
        Output.createUnknown<ReplicationCycleResponse>();
    this.lastSync = Output.createUnknown<ReplicationSyncResponse>();
    this.location = Output.createUnknown<String>();
    this.migratingVmId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.policy = Output.createUnknown<SchedulePolicyResponse>();
    this.project = Output.createUnknown<String>();
    this.recentCloneJobs = Output.createUnknown<List<CloneJobResponse>>();
    this.recentCutoverJobs = Output.createUnknown<List<CutoverJobResponse>>();
    this.requestId = Output.createUnknown<String?>();
    this.sourceId = Output.createUnknown<String>();
    this.sourceVmId = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.stateTime = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.vmwareSourceVmDetails =
        Output.createUnknown<VmwareSourceVmDetailsResponse>();
  }
}
