import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_exclusion_args.dart';

/// Manages a folder-level logging exclusion. For more information see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/folders.exclusions)
/// * How-to Guides
/// * [Excluding Logs](https://cloud.google.com/logging/docs/exclusions)
///
/// > You can specify exclusions for log sinks created by the provider by using the exclusions field of `gcp.logging.FolderSink`
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Folder-level logging exclusions can be imported using their URI, e.g.
///
/// * `folders/{{folder}}/exclusions/{{name}}`
///
/// When using the `pulumi import` command, folder-level logging exclusions can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/folderExclusion:FolderExclusion default folders/{{folder}}/exclusions/{{name}}
/// ```
class FolderExclusion extends pulumi.CustomResource {
  /// A human-readable description.
  late final pulumi.Output<String?> description;

  /// Whether this exclusion rule should be disabled or not. This defaults to
  /// false.
  late final pulumi.Output<bool?> disabled;

  /// The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced-filters) for information on how to
  /// write a filter.
  late final pulumi.Output<String> filter;

  /// The folder to be exported to the sink. Note that either [FOLDER_ID] or "folders/[FOLDER_ID]" is
  /// accepted.
  late final pulumi.Output<String> folder;

  /// The name of the logging exclusion.
  late final pulumi.Output<String> name;

  FolderExclusion(
    String name, {
    FolderExclusionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/folderExclusion:FolderExclusion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.disabled = registerOutput<bool?>('disabled');
    this.filter = registerOutput<String>('filter');
    this.folder = registerOutput<String>('folder');
    this.name = registerOutput<String>('name');
  }
}
