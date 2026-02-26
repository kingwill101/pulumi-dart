import 'package:pulumi/pulumi.dart';
import 'managed_folder_args.dart';

/// Creates a new managed folder.
class ManagedFolder extends CustomResource {
  late final Output<String> bucket;

  /// The creation time of the managed folder in RFC 3339 format.
  late final Output<String> createTime;

  /// The kind of item this is. For managed folders, this is always storage#managedFolder.
  late final Output<String> kind;

  /// The version of the metadata for this managed folder. Used for preconditions and for detecting changes in metadata.
  late final Output<String> metageneration;

  /// The name of the managed folder. Required if not specified by URL parameter.
  late final Output<String> name;

  /// The link to this managed folder.
  late final Output<String> selfLink;

  /// The last update time of the managed folder metadata in RFC 3339 format.
  late final Output<String> updateTime;

  ManagedFolder(
    String name, {
    ManagedFolderArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:storage/v1:ManagedFolder',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.kind = Output.createUnknown<String>();
    this.metageneration = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.selfLink = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
