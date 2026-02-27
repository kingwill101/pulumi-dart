// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../hl7_store_iam_binding_condition/hl7_store_iam_binding_condition.dart';

/// The set of arguments for Hl7StoreIamBinding.
class Hl7StoreIamBindingArgs {
  final pulumi.Input<Hl7StoreIamBindingCondition>? condition;

  /// The HL7v2 store ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}/{hl7_v2_store_name}` or
  /// `{location_name}/{dataset_name}/{hl7_v2_store_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  final pulumi.Input<String> hl7V2StoreId;

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
  /// `gcp.healthcare.Hl7StoreIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  Hl7StoreIamBindingArgs({
    this.condition,
    required this.hl7V2StoreId,
    required this.members,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          Hl7StoreIamBindingCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['hl7V2StoreId'] = hl7V2StoreId;
    map['members'] = members;
    map['role'] = role;
    return map;
  }

  factory Hl7StoreIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return Hl7StoreIamBindingArgs(
      condition: pulumi.Input.asOptionalInput<Hl7StoreIamBindingCondition>(
          map['condition']),
      hl7V2StoreId: pulumi.Input.asInput<String>(map['hl7V2StoreId']),
      members: pulumi.Input.asInput<List<String>>(map['members']),
      role: pulumi.Input.asInput<String>(map['role']),
    );
  }
}
