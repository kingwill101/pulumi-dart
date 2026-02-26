import 'package:pulumi/pulumi.dart';
import 'clone_job_args.dart';
import 'clone_step_response.dart';
import 'compute_engine_disks_target_details_response.dart';
import 'compute_engine_target_details_response.dart';
import 'status_response30.dart';

/// Initiates a Clone of a specific migrating VM.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class CloneJob extends CustomResource {
  /// Required. The clone job identifier.
  late final Output<String> cloneJobId;

  /// Details of the target Persistent Disks in Compute Engine.
  late final Output<ComputeEngineDisksTargetDetailsResponse>
      computeEngineDisksTargetDetails;

  /// Details of the target VM in Compute Engine.
  late final Output<ComputeEngineTargetDetailsResponse>
      computeEngineTargetDetails;

  /// The time the clone job was created (as an API call, not when it was actually created in the target).
  late final Output<String> createTime;

  /// The time the clone job was ended.
  late final Output<String> endTime;

  /// Provides details for the errors that led to the Clone Job's state.
  late final Output<StatusResponse30> error;
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
  late final Output<List<CloneStepResponse>> steps;

  CloneJob(
    String name, {
    CloneJobArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:vmmigration/v1:CloneJob',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cloneJobId = Output.createUnknown<String>();
    this.computeEngineDisksTargetDetails =
        Output.createUnknown<ComputeEngineDisksTargetDetailsResponse>();
    this.computeEngineTargetDetails =
        Output.createUnknown<ComputeEngineTargetDetailsResponse>();
    this.createTime = Output.createUnknown<String>();
    this.endTime = Output.createUnknown<String>();
    this.error = Output.createUnknown<StatusResponse30>();
    this.location = Output.createUnknown<String>();
    this.migratingVmId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.sourceId = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.stateTime = Output.createUnknown<String>();
    this.steps = Output.createUnknown<List<CloneStepResponse>>();
  }
}
