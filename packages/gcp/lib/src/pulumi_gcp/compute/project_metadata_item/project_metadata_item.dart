import 'package:pulumi/pulumi.dart';
import 'project_metadata_item_args.dart';

/// Manages a single key/value pair on metadata common to all instances for
/// a project in GCE. Using `gcp.compute.ProjectMetadataItem` lets you
/// manage a single key/value setting in the provider rather than the entire
/// project metadata map.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Project metadata items can be imported using the `key`, e.g.
///
/// * `{{key}}`
///
/// * `projects/{{project}}/meta-data/{{key}}`
///
/// When using the `pulumi import` command, project metadata items can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/projectMetadataItem:ProjectMetadataItem default {{key}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/projectMetadataItem:ProjectMetadataItem default projects/{{project}}/meta-data/{{key}}
/// ```
class ProjectMetadataItem extends CustomResource {
  /// The metadata key to set.
  late final Output<String> key;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final Output<String> project;

  /// The value to set for the given metadata key.
  ///
  /// - - -
  late final Output<String> value;

  ProjectMetadataItem(
    String name, {
    ProjectMetadataItemArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/projectMetadataItem:ProjectMetadataItem',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.key = registerOutput<String>('key');
    this.project = registerOutput<String>('project');
    this.value = registerOutput<String>('value');
  }
}
