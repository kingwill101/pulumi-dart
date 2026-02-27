// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../iammember_condition/iammember_condition_organizations.dart';

/// The set of arguments for IAMMember.
class IAMMemberOrganizationsIAmmemberArgs {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<IAMMemberConditionOrganizations>? condition;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<String> member;

  /// The organization id of the target organization.
  final pulumi.Input<String> orgId;

  /// The role that should be applied. Only one
  /// `gcp.organizations.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `organizations/{{org_id}}/roles/{{role_id}}`.
  final pulumi.Input<String> role;

  IAMMemberOrganizationsIAmmemberArgs({
    this.condition,
    required this.member,
    required this.orgId,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          IAMMemberConditionOrganizations,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['member'] = member;
    map['orgId'] = orgId;
    map['role'] = role;
    return map;
  }

  factory IAMMemberOrganizationsIAmmemberArgs.fromMap(
      Map<String, dynamic> map) {
    return IAMMemberOrganizationsIAmmemberArgs(
      condition: pulumi.Input.asOptionalInput<IAMMemberConditionOrganizations>(
          map['condition']),
      member: pulumi.Input.asInput<String>(map['member']),
      orgId: pulumi.Input.asInput<String>(map['orgId']),
      role: pulumi.Input.asInput<String>(map['role']),
    );
  }
}
