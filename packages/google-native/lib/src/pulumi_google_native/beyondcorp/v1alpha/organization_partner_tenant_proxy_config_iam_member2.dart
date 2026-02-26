import 'package:pulumi/pulumi.dart';
import '../../iam/v1/condition8.dart';
import 'organization_partner_tenant_proxy_config_iam_member_args2.dart';

/// Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.
class OrganizationPartnerTenantProxyConfigIamMember2 extends CustomResource {
  /// An IAM Condition for a given binding. See https://cloud.google.com/iam/docs/conditions-overview for additional details.
  late final Output<Condition8?> condition;

  /// The etag of the resource's IAM policy.
  late final Output<String> etag;

  /// Identity that will be granted the privilege in role. The entry can have one of the following values:
  ///
  /// * user:{emailid}: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * serviceAccount:{emailid}: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * group:{emailid}: An email address that represents a Google group. For example, admins@example.com.
  /// * domain:{domain}: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final Output<String> member;

  /// The name of the resource to manage IAM policies for.
  late final Output<String> name;

  /// The project in which the resource belongs. If it is not provided, a default will be supplied.
  late final Output<String> project;

  /// The role that should be applied.
  late final Output<String> role;

  OrganizationPartnerTenantProxyConfigIamMember2(
    String name, {
    OrganizationPartnerTenantProxyConfigIamMemberArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:beyondcorp/v1alpha:OrganizationPartnerTenantProxyConfigIamMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = Output.createUnknown<Condition8?>();
    this.etag = Output.createUnknown<String>();
    this.member = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
