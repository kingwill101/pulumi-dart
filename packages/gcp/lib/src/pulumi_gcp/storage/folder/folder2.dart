import 'package:pulumi/pulumi.dart';
import 'folder_args2.dart';

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
class Folder2 extends CustomResource {
  /// The name of the bucket that contains the folder.
  late final Output<String> bucket;

  /// The timestamp at which this folder was created.
  late final Output<String> createTime;

  /// If set to true, items within folder if any will be force destroyed.
  late final Output<bool?> forceDestroy;

  /// The metadata generation of the folder.
  late final Output<String> metageneration;

  /// The name of the folder expressed as a path. Must include
  /// trailing '/'. For example, `example_dir/example_dir2/`, `example@#/`, `a-b/d-f/`.
  late final Output<String> name;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// The timestamp at which this folder was most recently updated.
  late final Output<String> updateTime;

  Folder2(
    String name, {
    FolderArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:storage/folder:Folder',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
