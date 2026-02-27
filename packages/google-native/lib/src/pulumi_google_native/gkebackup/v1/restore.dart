import 'package:pulumi/pulumi.dart' hide Config;
import 'restore_args.dart';
import 'restore_config_response.dart';

/// Creates a new Restore for the given RestorePlan.
/// Auto-naming is currently not supported for this resource.
class Restore extends CustomResource {
  /// Immutable. A reference to the Backup used as the source from which this Restore will restore. Note that this Backup must be a sub-resource of the RestorePlan's backup_plan. Format: `projects/*/locations/*/backupPlans/*/backups/*`.
  late final Output<String> backup;

  /// The target cluster into which this Restore will restore data. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*` Inherited from parent RestorePlan's cluster value.
  late final Output<String> cluster;

  /// Timestamp of when the restore operation completed.
  late final Output<String> completeTime;

  /// The timestamp when this Restore resource was created.
  late final Output<String> createTime;

  /// User specified descriptive string for this Restore.
  late final Output<String> description;

  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a restore from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform restore updates in order to avoid race conditions: An `etag` is returned in the response to `GetRestore`, and systems are expected to put that etag in the request to `UpdateRestore` or `DeleteRestore` to ensure that their change will be applied to the same version of the resource.
  late final Output<String> etag;

  /// A set of custom labels supplied by user.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The full name of the Restore resource. Format: `projects/*/locations/*/restorePlans/*/restores/*`
  late final Output<String> name;
  late final Output<String> project;

  /// Number of resources excluded during the restore execution.
  late final Output<int> resourcesExcludedCount;

  /// Number of resources that failed to be restored during the restore execution.
  late final Output<int> resourcesFailedCount;

  /// Number of resources restored during the restore execution.
  late final Output<int> resourcesRestoredCount;

  /// Configuration of the Restore. Inherited from parent RestorePlan's restore_config.
  late final Output<RestoreConfigResponse> restoreConfig;

  /// Required. The client-provided short name for the Restore resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of Restores in this RestorePlan.
  late final Output<String> restoreId;
  late final Output<String> restorePlanId;

  /// The current state of the Restore.
  late final Output<String> state;

  /// Human-readable description of why the Restore is in its current state.
  late final Output<String> stateReason;

  /// Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.
  late final Output<String> uid;

  /// The timestamp when this Restore resource was last updated.
  late final Output<String> updateTime;

  /// Number of volumes restored during the restore execution.
  late final Output<int> volumesRestoredCount;

  Restore(
    String name, {
    RestoreArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:gkebackup/v1:Restore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
