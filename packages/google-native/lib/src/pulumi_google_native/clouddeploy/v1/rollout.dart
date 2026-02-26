import 'package:pulumi/pulumi.dart';
import 'metadata_response.dart';
import 'phase_response.dart';
import 'rollout_args.dart';

/// Creates a new Rollout in a given project and location.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Rollout extends CustomResource {
  /// User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  late final Output<Map<String, String>> annotations;

  /// Approval state of the `Rollout`.
  late final Output<String> approvalState;

  /// Time at which the `Rollout` was approved.
  late final Output<String> approveTime;

  /// Name of the `ControllerRollout`. Format is `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/{release}/rollouts/a-z{0,62}`.
  late final Output<String> controllerRollout;

  /// Time at which the `Rollout` was created.
  late final Output<String> createTime;
  late final Output<String> deliveryPipelineId;

  /// Time at which the `Rollout` finished deploying.
  late final Output<String> deployEndTime;

  /// The reason this rollout failed. This will always be unspecified while the rollout is in progress.
  late final Output<String> deployFailureCause;

  /// Time at which the `Rollout` started deploying.
  late final Output<String> deployStartTime;

  /// The resource name of the Cloud Build `Build` object that is used to deploy the Rollout. Format is `projects/{project}/locations/{location}/builds/{build}`.
  late final Output<String> deployingBuild;

  /// Description of the `Rollout` for user purposes. Max length is 255 characters.
  late final Output<String> description;

  /// Time at which the `Rollout` was enqueued.
  late final Output<String> enqueueTime;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// Additional information about the rollout failure, if available.
  late final Output<String> failureReason;

  /// Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Metadata contains information about the rollout.
  late final Output<MetadataResponse> metadata;

  /// Optional. Name of the `Rollout`. Format is `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/{release}/rollouts/a-z{0,62}`.
  late final Output<String> name;

  /// The phases that represent the workflows of this `Rollout`.
  late final Output<List<PhaseResponse>> phases;
  late final Output<String> project;
  late final Output<String> releaseId;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Name of the `Rollout` that is rolled back by this `Rollout`. Empty if this `Rollout` wasn't created as a rollback.
  late final Output<String> rollbackOfRollout;

  /// Names of `Rollouts` that rolled back this `Rollout`.
  late final Output<List<String>> rolledBackByRollouts;

  /// Required. ID of the `Rollout`.
  late final Output<String> rolloutId;

  /// Optional. The starting phase ID for the `Rollout`. If empty the `Rollout` will start at the first phase.
  late final Output<String?> startingPhaseId;

  /// Current state of the `Rollout`.
  late final Output<String> state;

  /// The ID of Target to which this `Rollout` is deploying.
  late final Output<String> targetId;

  /// Unique identifier of the `Rollout`.
  late final Output<String> uid;

  Rollout(
    String name, {
    RolloutArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:clouddeploy/v1:Rollout',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.approvalState = registerOutput<String>('approvalState');
    this.approveTime = registerOutput<String>('approveTime');
    this.controllerRollout = registerOutput<String>('controllerRollout');
    this.createTime = registerOutput<String>('createTime');
    this.deliveryPipelineId = registerOutput<String>('deliveryPipelineId');
    this.deployEndTime = registerOutput<String>('deployEndTime');
    this.deployFailureCause = registerOutput<String>('deployFailureCause');
    this.deployStartTime = registerOutput<String>('deployStartTime');
    this.deployingBuild = registerOutput<String>('deployingBuild');
    this.description = registerOutput<String>('description');
    this.enqueueTime = registerOutput<String>('enqueueTime');
    this.etag = registerOutput<String>('etag');
    this.failureReason = registerOutput<String>('failureReason');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<MetadataResponse>('metadata');
    this.name = registerOutput<String>('name');
    this.phases = registerOutput<List<PhaseResponse>>('phases');
    this.project = registerOutput<String>('project');
    this.releaseId = registerOutput<String>('releaseId');
    this.requestId = registerOutput<String?>('requestId');
    this.rollbackOfRollout = registerOutput<String>('rollbackOfRollout');
    this.rolledBackByRollouts =
        registerOutput<List<String>>('rolledBackByRollouts');
    this.rolloutId = registerOutput<String>('rolloutId');
    this.startingPhaseId = registerOutput<String?>('startingPhaseId');
    this.state = registerOutput<String>('state');
    this.targetId = registerOutput<String>('targetId');
    this.uid = registerOutput<String>('uid');
  }
}
