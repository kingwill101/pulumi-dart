import 'package:pulumi/pulumi.dart';
import 'bucket_iam_policy_args.dart';
import 'bucket_iam_policy_bindings_item_response.dart';

/// Updates an IAM policy for the specified bucket.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class BucketIamPolicy extends CustomResource {
  /// An association between a role, which comes with a set of permissions, and members who may assume that role.
  late final Output<List<BucketIamPolicyBindingsItemResponse>> bindings;
  late final Output<String> bucket;

  /// HTTP 1.1  Entity tag for the policy.
  late final Output<String> etag;

  /// The kind of item this is. For policies, this is always storage#policy. This field is ignored on input.
  late final Output<String> kind;

  /// The ID of the resource to which this policy belongs. Will be of the form projects/_/buckets/bucket for buckets, projects/_/buckets/bucket/objects/object for objects, and projects/_/buckets/bucket/managedFolders/managedFolder. A specific generation may be specified by appending #generationNumber to the end of the object name, e.g. projects/_/buckets/my-bucket/objects/data.txt#17. The current generation can be denoted with #0. This field is ignored on input.
  late final Output<String> resourceId;

  /// The project to be billed for this request. Required for Requester Pays buckets.
  late final Output<String?> userProject;

  /// The IAM policy format version.
  late final Output<int> version;

  BucketIamPolicy(
    String name, {
    BucketIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:storage/v1:BucketIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bindings =
        registerOutput<List<BucketIamPolicyBindingsItemResponse>>('bindings');
    this.bucket = registerOutput<String>('bucket');
    this.etag = registerOutput<String>('etag');
    this.kind = registerOutput<String>('kind');
    this.resourceId = registerOutput<String>('resourceId');
    this.userProject = registerOutput<String?>('userProject');
    this.version = registerOutput<int>('version');
  }
}
