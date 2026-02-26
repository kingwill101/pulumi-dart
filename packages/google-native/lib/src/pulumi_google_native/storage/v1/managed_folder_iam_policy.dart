import 'package:pulumi/pulumi.dart';
import 'managed_folder_iam_policy_args.dart';
import 'managed_folder_iam_policy_bindings_item_response.dart';

/// Updates an IAM policy for the specified managed folder.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class ManagedFolderIamPolicy extends CustomResource {
  /// An association between a role, which comes with a set of permissions, and members who may assume that role.
  late final Output<List<ManagedFolderIamPolicyBindingsItemResponse>> bindings;
  late final Output<String> bucket;

  /// HTTP 1.1  Entity tag for the policy.
  late final Output<String> etag;

  /// The kind of item this is. For policies, this is always storage#policy. This field is ignored on input.
  late final Output<String> kind;
  late final Output<String> managedFolder;

  /// The ID of the resource to which this policy belongs. Will be of the form projects/_/buckets/bucket for buckets, projects/_/buckets/bucket/objects/object for objects, and projects/_/buckets/bucket/managedFolders/managedFolder. A specific generation may be specified by appending #generationNumber to the end of the object name, e.g. projects/_/buckets/my-bucket/objects/data.txt#17. The current generation can be denoted with #0. This field is ignored on input.
  late final Output<String> resourceId;

  /// The project to be billed for this request. Required for Requester Pays buckets.
  late final Output<String?> userProject;

  /// The IAM policy format version.
  late final Output<int> version;

  ManagedFolderIamPolicy(
    String name, {
    ManagedFolderIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:storage/v1:ManagedFolderIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bindings = Output.createUnknown<
        List<ManagedFolderIamPolicyBindingsItemResponse>>();
    this.bucket = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.kind = Output.createUnknown<String>();
    this.managedFolder = Output.createUnknown<String>();
    this.resourceId = Output.createUnknown<String>();
    this.userProject = Output.createUnknown<String?>();
    this.version = Output.createUnknown<int>();
  }
}
