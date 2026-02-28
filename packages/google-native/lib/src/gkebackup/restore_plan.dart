import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_config_response.dart';
import 'restore_plan_args.dart';

/// Creates a new RestorePlan in a given location.
/// Auto-naming is currently not supported for this resource.
class RestorePlan extends pulumi.CustomResource {
  /// Immutable. A reference to the BackupPlan from which Backups may be used as the source for Restores created via this RestorePlan. Format: `projects/*/locations/*/backupPlans/*`.
  late final pulumi.Output<String> backupPlan;
  /// Immutable. The target cluster into which Restores created via this RestorePlan will restore data. NOTE: the cluster's region must be the same as the RestorePlan. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*`
  late final pulumi.Output<String> cluster;
  /// The timestamp when this RestorePlan resource was created.
  late final pulumi.Output<String> createTime;
  /// Optional. User specified descriptive string for this RestorePlan.
  late final pulumi.Output<String> description;
  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a restore from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform restore updates in order to avoid race conditions: An `etag` is returned in the response to `GetRestorePlan`, and systems are expected to put that etag in the request to `UpdateRestorePlan` or `DeleteRestorePlan` to ensure that their change will be applied to the same version of the resource.
  late final pulumi.Output<String> etag;
  /// Optional. A set of custom labels supplied by user.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// The full name of the RestorePlan resource. Format: `projects/*/locations/*/restorePlans/*`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Configuration of Restores created via this RestorePlan.
  late final pulumi.Output<RestoreConfigResponse> restoreConfig;
  /// Required. The client-provided short name for the RestorePlan resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of RestorePlans in this location
  late final pulumi.Output<String> restorePlanId;
  /// State of the RestorePlan. This State field reflects the various stages a RestorePlan can be in during the Create operation.
  late final pulumi.Output<String> state;
  /// Human-readable description of why RestorePlan is in the current `state`
  late final pulumi.Output<String> stateReason;
  /// Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.
  late final pulumi.Output<String> uid;
  /// The timestamp when this RestorePlan resource was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [RestorePlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RestorePlan]. {@macro pulumi_gkebackup_v1_restore_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RestorePlan(
    String name, {
    RestorePlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:gkebackup/v1:RestorePlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupPlan = registerOutput<String>('backupPlan');
    this.cluster = registerOutput<String>('cluster');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.restoreConfig = registerOutput<RestoreConfigResponse>('restoreConfig');
    this.restorePlanId = registerOutput<String>('restorePlanId');
    this.state = registerOutput<String>('state');
    this.stateReason = registerOutput<String>('stateReason');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
