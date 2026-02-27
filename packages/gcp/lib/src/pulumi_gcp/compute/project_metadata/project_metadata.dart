import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_metadata_args.dart';

/// Authoritatively manages metadata common to all instances for a project in GCE. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/storing-retrieving-metadata)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/latest/projects/setCommonInstanceMetadata).
///
/// > **Note:**  This resource manages all project-level metadata including project-level ssh keys.
/// Keys unset in config but set on the server will be removed. If you want to manage only single
/// key/value pairs within the project metadata rather than the entire set, then use
/// google_compute_project_metadata_item.
///
/// ## Example Usage
///
///
///
/// ### Adding An SSH Key
///
///
///
/// ## Import
///
/// Project metadata can be imported using the project ID:
///
/// * `{{project_id}}`
///
/// When using the `pulumi import` command, project metadata can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/projectMetadata:ProjectMetadata default {{project_id}}
/// ```
class ProjectMetadata extends pulumi.CustomResource {
  /// A series of key value pairs.
  ///
  /// - - -
  late final pulumi.Output<Map<String, String>> metadata;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  ProjectMetadata(
    String name, {
    ProjectMetadataArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/projectMetadata:ProjectMetadata',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.metadata = registerOutput<Map<String, String>>('metadata');
    this.project = registerOutput<String>('project');
  }
}
