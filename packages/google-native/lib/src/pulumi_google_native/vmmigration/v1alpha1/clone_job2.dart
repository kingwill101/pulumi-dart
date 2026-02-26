import 'package:pulumi/pulumi.dart';
import 'clone_job_args2.dart';
import 'clone_step_response2.dart';
import 'compute_engine_disks_target_details_response2.dart';
import 'compute_engine_target_details_response2.dart';
import 'status_response31.dart';
import 'target_vmdetails_response.dart';

/// Initiates a Clone of a specific migrating VM.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class CloneJob2 extends CustomResource {
  /// Required. The clone job identifier.
  late final Output<String> cloneJobId;

  /// Details of the target Persistent Disks in Compute Engine.
  late final Output<ComputeEngineDisksTargetDetailsResponse2>
      computeEngineDisksTargetDetails;

  /// Details of the target VM in Compute Engine.
  late final Output<ComputeEngineTargetDetailsResponse2>
      computeEngineTargetDetails;

  /// Details of the VM in Compute Engine. Deprecated: Use compute_engine_target_details instead.
  late final Output<TargetVMDetailsResponse> computeEngineVmDetails;

  /// The time the clone job was created (as an API call, not when it was actually created in the target).
  late final Output<String> createTime;

  /// The time the clone job was ended.
  late final Output<String> endTime;

  /// Provides details for the errors that led to the Clone Job's state.
  late final Output<StatusResponse31> error;
  late final Output<String> location;
  late final Output<String> migratingVmId;

  /// The name of the clone.
  late final Output<String> name;
  late final Output<String> project;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;
  late final Output<String> sourceId;

  /// State of the clone job.
  late final Output<String> state;

  /// The time the state was last updated.
  late final Output<String> stateTime;

  /// The clone steps list representing its progress.
  late final Output<List<CloneStepResponse2>> steps;

  /// Details of the VM to create as the target of this clone job. Deprecated: Use compute_engine_target_details instead.
  late final Output<TargetVMDetailsResponse> targetDetails;

  CloneJob2(
    String name, {
    CloneJobArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:vmmigration/v1alpha1:CloneJob',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cloneJobId = registerOutput<String>('cloneJobId');
    this.computeEngineDisksTargetDetails =
        registerOutput<ComputeEngineDisksTargetDetailsResponse2>(
            'computeEngineDisksTargetDetails');
    this.computeEngineTargetDetails =
        registerOutput<ComputeEngineTargetDetailsResponse2>(
            'computeEngineTargetDetails');
    this.computeEngineVmDetails =
        registerOutput<TargetVMDetailsResponse>('computeEngineVmDetails');
    this.createTime = registerOutput<String>('createTime');
    this.endTime = registerOutput<String>('endTime');
    this.error = registerOutput<StatusResponse31>('error');
    this.location = registerOutput<String>('location');
    this.migratingVmId = registerOutput<String>('migratingVmId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.sourceId = registerOutput<String>('sourceId');
    this.state = registerOutput<String>('state');
    this.stateTime = registerOutput<String>('stateTime');
    this.steps = registerOutput<List<CloneStepResponse2>>('steps');
    this.targetDetails =
        registerOutput<TargetVMDetailsResponse>('targetDetails');
  }
}
