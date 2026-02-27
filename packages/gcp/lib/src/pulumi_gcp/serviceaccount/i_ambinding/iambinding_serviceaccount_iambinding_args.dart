// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../iambinding_condition/iambinding_condition_serviceaccount.dart';

/// The set of arguments for IAMBinding.
class IAMBindingServiceaccountIAmbindingArgs {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<IAMBindingConditionServiceaccount>? condition;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<List<String>> members;

  /// The role that should be applied. Only one
  /// `gcp.serviceaccount.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// The fully-qualified name of the service account to apply policy to.
  final pulumi.Input<String> serviceAccountId;

  IAMBindingServiceaccountIAmbindingArgs({
    this.condition,
    required this.members,
    required this.role,
    required this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          IAMBindingConditionServiceaccount,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['members'] = members;
    map['role'] = role;
    map['serviceAccountId'] = serviceAccountId;
    return map;
  }

  factory IAMBindingServiceaccountIAmbindingArgs.fromMap(
      Map<String, dynamic> map) {
    return IAMBindingServiceaccountIAmbindingArgs(
      condition:
          pulumi.Input.asOptionalInput<IAMBindingConditionServiceaccount>(
              map['condition']),
      members: pulumi.Input.asInput<List<String>>(map['members']),
      role: pulumi.Input.asInput<String>(map['role']),
      serviceAccountId: pulumi.Input.asInput<String>(map['serviceAccountId']),
    );
  }
}
