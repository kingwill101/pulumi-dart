import 'package:pulumi/pulumi.dart';
import 'managed_folder_args.dart';

/// A Google Cloud Storage Managed Folder.
///
/// You can apply Identity and Access Management (IAM) policies to
/// managed folders to grant principals access only to the objects
/// within the managed folder, which lets you more finely control access
/// for specific data sets and tables within a bucket. You can nest
/// managed folders up to 15 levels deep, including the parent managed
/// folder.
///
/// Managed folders can only be created in buckets that have uniform
/// bucket-level access enabled.
///
///
/// To get more information about ManagedFolder, see:
///
/// * [API documentation](https://cloud.google.com/storage/docs/json_api/v1/managedFolder)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/storage/docs/managed-folders)
///
/// ## Example Usage
///
/// ### Storage Managed Folder Basic
///
///
///
///
/// ## Import
///
/// ManagedFolder can be imported using any of these accepted formats:
///
/// * `{{bucket}}/managedFolders/{{name}}`
///
/// * `{{bucket}}/{{name}}`
///
/// When using the `pulumi import` command, ManagedFolder can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/managedFolder:ManagedFolder default {{bucket}}/managedFolders/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:storage/managedFolder:ManagedFolder default {{bucket}}/{{name}}
/// ```
class ManagedFolder extends CustomResource {
  /// The name of the bucket that contains the managed folder.
  late final Output<String> bucket;

  /// The timestamp at which this managed folder was created.
  late final Output<String> createTime;

  /// Allows the deletion of a managed folder even if contains
  /// objects. If a non-empty managed folder is deleted, any objects
  /// within the folder will remain in a simulated folder with the
  /// same name.
  late final Output<bool?> forceDestroy;

  /// The metadata generation of the managed folder.
  late final Output<String> metageneration;

  /// The name of the managed folder expressed as a path. Must include
  /// trailing '/'. For example, `example_dir/example_dir2/`.
  late final Output<String> name;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// The timestamp at which this managed folder was most recently updated.
  late final Output<String> updateTime;

  ManagedFolder(
    String name, {
    ManagedFolderArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:storage/managedFolder:ManagedFolder',
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
