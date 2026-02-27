import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_storage_args.dart';

/// A Google Cloud Storage Folder.
///
/// The Folder resource represents a folder in a Cloud Storage bucket with hierarchical namespace enabled
///
///
/// To get more information about Folder, see:
///
/// * [API documentation](https://cloud.google.com/storage/docs/json_api/v1/folders)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/storage/docs/folders-overview)
///
/// ## Example Usage
///
/// ### Storage Folder Basic
///
///
///
///
/// ## Import
///
/// Folder can be imported using any of these accepted formats:
///
/// * `{{bucket}}/folders/{{name}}`
///
/// * `{{bucket}}/{{name}}`
///
/// When using the `pulumi import` command, Folder can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/folder:Folder default {{bucket}}/folders/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:storage/folder:Folder default {{bucket}}/{{name}}
/// ```
class FolderStorage extends pulumi.CustomResource {
  /// The name of the bucket that contains the folder.
  late final pulumi.Output<String> bucket;

  /// The timestamp at which this folder was created.
  late final pulumi.Output<String> createTime;

  /// If set to true, items within folder if any will be force destroyed.
  late final pulumi.Output<bool?> forceDestroy;

  /// The metadata generation of the folder.
  late final pulumi.Output<String> metageneration;

  /// The name of the folder expressed as a path. Must include
  /// trailing '/'. For example, `example_dir/example_dir2/`, `example@#/`, `a-b/d-f/`.
  late final pulumi.Output<String> name;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// The timestamp at which this folder was most recently updated.
  late final pulumi.Output<String> updateTime;

  FolderStorage(
    String name, {
    FolderStorageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/folder:Folder',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.createTime = registerOutput<String>('createTime');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.metageneration = registerOutput<String>('metageneration');
    this.name = registerOutput<String>('name');
    this.selfLink = registerOutput<String>('selfLink');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
