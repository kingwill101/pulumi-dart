import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_args.dart';
import 'restore_config_response.dart';

/// Creates a new Restore for the given RestorePlan.
/// Auto-naming is currently not supported for this resource.
class Restore extends pulumi.CustomResource {
  /// Immutable. A reference to the Backup used as the source from which this Restore will restore. Note that this Backup must be a sub-resource of the RestorePlan's backup_plan. Format: `projects/*/locations/*/backupPlans/*/backups/*`.
  late final pulumi.Output<String> backup;

  /// The target cluster into which this Restore will restore data. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*` Inherited from parent RestorePlan's cluster value.
  late final pulumi.Output<String> cluster;

  /// Timestamp of when the restore operation completed.
  late final pulumi.Output<String> completeTime;

  /// The timestamp when this Restore resource was created.
  late final pulumi.Output<String> createTime;

  /// User specified descriptive string for this Restore.
  late final pulumi.Output<String> description;

  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a restore from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform restore updates in order to avoid race conditions: An `etag` is returned in the response to `GetRestore`, and systems are expected to put that etag in the request to `UpdateRestore` or `DeleteRestore` to ensure that their change will be applied to the same version of the resource.
  late final pulumi.Output<String> etag;

  /// A set of custom labels supplied by user.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The full name of the Restore resource. Format: `projects/*/locations/*/restorePlans/*/restores/*`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Number of resources excluded during the restore execution.
  late final pulumi.Output<int> resourcesExcludedCount;

  /// Number of resources that failed to be restored during the restore execution.
  late final pulumi.Output<int> resourcesFailedCount;

  /// Number of resources restored during the restore execution.
  late final pulumi.Output<int> resourcesRestoredCount;

  /// Configuration of the Restore. Inherited from parent RestorePlan's restore_config.
  late final pulumi.Output<RestoreConfigResponse> restoreConfig;

  /// Required. The client-provided short name for the Restore resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of Restores in this RestorePlan.
  late final pulumi.Output<String> restoreId;
  late final pulumi.Output<String> restorePlanId;

  /// The current state of the Restore.
  late final pulumi.Output<String> state;

  /// Human-readable description of why the Restore is in its current state.
  late final pulumi.Output<String> stateReason;

  /// Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.
  late final pulumi.Output<String> uid;

  /// The timestamp when this Restore resource was last updated.
  late final pulumi.Output<String> updateTime;

  /// Number of volumes restored during the restore execution.
  late final pulumi.Output<int> volumesRestoredCount;

  /// Creates a new [Restore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Restore]. {@macro pulumi_gkebackup_v1_restore_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Restore(
    String name, {
    RestoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:gkebackup/v1:Restore',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.backup = registerOutput<String>('backup');
    this.cluster = registerOutput<String>('cluster');
    this.completeTime = registerOutput<String>('completeTime');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.resourcesExcludedCount = registerOutput<int>('resourcesExcludedCount');
    this.resourcesFailedCount = registerOutput<int>('resourcesFailedCount');
    this.resourcesRestoredCount = registerOutput<int>('resourcesRestoredCount');
    this.restoreConfig = registerOutput<RestoreConfigResponse>('restoreConfig');
    this.restoreId = registerOutput<String>('restoreId');
    this.restorePlanId = registerOutput<String>('restorePlanId');
    this.state = registerOutput<String>('state');
    this.stateReason = registerOutput<String>('stateReason');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.volumesRestoredCount = registerOutput<int>('volumesRestoredCount');
  }
}
