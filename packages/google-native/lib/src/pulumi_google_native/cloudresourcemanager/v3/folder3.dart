import 'package:pulumi/pulumi.dart';
import 'folder_args3.dart';

/// Creates a folder in the resource hierarchy. Returns an `Operation` which can be used to track the progress of the folder creation workflow. Upon success, the `Operation.response` field will be populated with the created Folder. In order to succeed, the addition of this new folder must not violate the folder naming, height, or fanout constraints. + The folder's `display_name` must be distinct from all other folders that share its parent. + The addition of the folder must not cause the active folder hierarchy to exceed a height of 10. Note, the full active + deleted folder hierarchy is allowed to reach a height of 20; this provides additional headroom when moving folders that contain deleted folders. + The addition of the folder must not cause the total number of folders under its parent to exceed 300. If the operation fails due to a folder constraint violation, some errors may be returned by the `CreateFolder` request, with status code `FAILED_PRECONDITION` and an error description. Other folder constraint violations will be communicated in the `Operation`, with the specific `PreconditionFailure` returned in the details list in the `Operation.error` field. The caller must have `resourcemanager.folders.create` permission on the identified parent.
/// Auto-naming is currently not supported for this resource.
class Folder3 extends CustomResource {
  /// Timestamp when the folder was created.
  late final Output<String> createTime;

  /// Timestamp when the folder was requested to be deleted.
  late final Output<String> deleteTime;

  /// The folder's display name. A folder's display name must be unique amongst its siblings. For example, no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters. This is captured by the regular expression: `[\p{L}\p{N}]([\p{L}\p{N}_- ]{0,28}[\p{L}\p{N}])?`.
  late final Output<String> displayName;

  /// A checksum computed by the server based on the current value of the folder resource. This may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// The resource name of the folder. Its format is `folders/{folder_id}`, for example: "folders/1234".
  late final Output<String> name;

  /// The folder's parent's resource name. Updates to the folder's parent must be performed using MoveFolder.
  late final Output<String> parent;

  /// The lifecycle state of the folder. Updates to the state must be performed using DeleteFolder and UndeleteFolder.
  late final Output<String> state;

  /// Timestamp when the folder was last modified.
  late final Output<String> updateTime;

  Folder3(
    String name, {
    FolderArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudresourcemanager/v3:Folder',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.deleteTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.parent = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
