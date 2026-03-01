import 'package:pulumi/pulumi.dart' as pulumi;
import '../accesscontextmanager/condition.dart';
import 'address_group_iam_member_networksecurity_v1beta1_args.dart';

/// Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.
class AddressGroupIamMemberNetworksecurityV1beta1
    extends pulumi.CustomResource {
  /// An IAM Condition for a given binding. See https://cloud.google.com/iam/docs/conditions-overview for additional details.
  late final pulumi.Output<Condition?> condition;

  /// The etag of the resource's IAM policy.
  late final pulumi.Output<String> etag;

  /// Identity that will be granted the privilege in role. The entry can have one of the following values:
  ///
  /// * user:{emailid}: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * serviceAccount:{emailid}: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * group:{emailid}: An email address that represents a Google group. For example, admins@example.com.
  /// * domain:{domain}: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final pulumi.Output<String> member;

  /// The name of the resource to manage IAM policies for.
  late final pulumi.Output<String> name;

  /// The project in which the resource belongs. If it is not provided, a default will be supplied.
  late final pulumi.Output<String> project;

  /// The role that should be applied.
  late final pulumi.Output<String> role;

  /// Creates a new [AddressGroupIamMemberNetworksecurityV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AddressGroupIamMemberNetworksecurityV1beta1]. {@macro pulumi_networksecurity_v1beta1_address_group_iam_member_networksecurity_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AddressGroupIamMemberNetworksecurityV1beta1(
    String name, {
    AddressGroupIamMemberNetworksecurityV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:networksecurity/v1beta1:AddressGroupIamMember',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.condition = registerOutput<Condition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
