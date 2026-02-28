import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_cloudresourcemanager_v2beta1_args.dart';

/// Creates a Folder in the resource hierarchy. Returns an Operation which can be used to track the progress of the folder creation workflow. Upon success the Operation.response field will be populated with the created Folder. In order to succeed, the addition of this new Folder must not violate the Folder naming, height or fanout constraints. + The Folder's display_name must be distinct from all other Folders that share its parent. + The addition of the Folder must not cause the active Folder hierarchy to exceed a height of 10. Note, the full active + deleted Folder hierarchy is allowed to reach a height of 20; this provides additional headroom when moving folders that contain deleted folders. + The addition of the Folder must not cause the total number of Folders under its parent to exceed 300. If the operation fails due to a folder constraint violation, some errors may be returned by the CreateFolder request, with status code FAILED_PRECONDITION and an error description. Other folder constraint violations will be communicated in the Operation, with the specific PreconditionFailure returned via the details list in the Operation.error field. The caller must have `resourcemanager.folders.create` permission on the identified parent.
/// Auto-naming is currently not supported for this resource.
class FolderCloudresourcemanagerV2beta1 extends pulumi.CustomResource {
  /// Timestamp when the Folder was created. Assigned by the server.
  late final pulumi.Output<String> createTime;
  /// The folder's display name. A folder's display name must be unique amongst its siblings, e.g. no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters. This is captured by the regular expression: `[\p{L}\p{N}]([\p{L}\p{N}_- ]{0,28}[\p{L}\p{N}])?`.
  late final pulumi.Output<String> displayName;
  /// The lifecycle state of the folder. Updates to the lifecycle_state must be performed via DeleteFolder and UndeleteFolder.
  late final pulumi.Output<String> lifecycleState;
  /// The resource name of the Folder. Its format is `folders/{folder_id}`, for example: "folders/1234".
  late final pulumi.Output<String> name;
  /// Required. The resource name of the new Folder's parent. Must be of the form `folders/{folder_id}` or `organizations/{org_id}`.
  late final pulumi.Output<String> parent;

  /// Creates a new [FolderCloudresourcemanagerV2beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FolderCloudresourcemanagerV2beta1]. {@macro pulumi_cloudresourcemanager_v2beta1_folder_cloudresourcemanager_v2beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FolderCloudresourcemanagerV2beta1(
    String name, {
    FolderCloudresourcemanagerV2beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:cloudresourcemanager/v2beta1:Folder',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.lifecycleState = registerOutput<String>('lifecycleState');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
  }
}
