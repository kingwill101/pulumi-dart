import 'package:pulumi/pulumi.dart' as pulumi;
import '../snapshot_settings_storage_location/snapshot_settings_storage_location.dart';
import 'snapshot_settings_args.dart';

/// Updates your project's snapshot settings and sets a new default storage location for snapshots.
///
///
/// To get more information about SnapshotSettings, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/snapshotSettings)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/disks/snapshot-settings#snapshot_settings_how_to_update)
///
/// ## Example Usage
///
/// ### Snapshot Settings Specific Locations
///
///
///
///
/// ## Import
///
/// SnapshotSettings can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/snapshotSettings/`
///
/// * `{{project}}`
///
/// When using the `pulumi import` command, SnapshotSettings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/snapshotSettings:SnapshotSettings default projects/{{project}}/global/snapshotSettings/
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/snapshotSettings:SnapshotSettings default {{project}}
/// ```
class SnapshotSettings extends pulumi.CustomResource {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Policy of which storage location is going to be resolved, and additional data
  /// that particularizes how the policy is going to be carried out
  /// Structure is documented below.
  late final pulumi.Output<SnapshotSettingsStorageLocation> storageLocation;

  SnapshotSettings(
    String name, {
    SnapshotSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/snapshotSettings:SnapshotSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.project = registerOutput<String>('project');
    this.storageLocation =
        registerOutput<SnapshotSettingsStorageLocation>('storageLocation');
  }
}
