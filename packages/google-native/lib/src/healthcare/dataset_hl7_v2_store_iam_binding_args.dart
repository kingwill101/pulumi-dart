// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../accesscontextmanager/condition.dart';

/// {@template pulumi_healthcare_v1_dataset_hl7_v2_store_iam_binding_args_doc}
/// The set of arguments for DatasetHl7V2StoreIamBinding.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_dataset_hl7_v2_store_iam_binding_args_doc}
class DatasetHl7V2StoreIamBindingArgs {
  /// An IAM Condition for a given binding.
  final pulumi.Input<Condition>? condition;

  /// Identities that will be granted the privilege in role. Each entry can have one of the following values:
  ///
  /// * user:{emailid}: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * serviceAccount:{emailid}: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * group:{emailid}: An email address that represents a Google group. For example, admins@example.com.
  /// * domain:{domain}: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<List<String>> members;

  /// The name of the resource to manage IAM policies for.
  final pulumi.Input<String> name;

  /// The role that should be applied. Only one `IamBinding` can be used per role.
  final pulumi.Input<String> role;

  /// Creates a new [DatasetHl7V2StoreIamBindingArgs].
  /// [condition] An IAM Condition for a given binding.
  /// [members] Identities that will be granted the privilege in role. Each entry can have one of the following values:
  /// [name] The name of the resource to manage IAM policies for.
  /// [role] The role that should be applied. Only one `IamBinding` can be used per role.
  DatasetHl7V2StoreIamBindingArgs({
    Condition? condition,
    required List<String> members,
    required String name,
    required String role,
  })  : condition = pulumi.Input.asOptionalInput<Condition>(condition),
        members = pulumi.Input.asInput<List<String>>(members),
        name = pulumi.Input.asInput<String>(name),
        role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] =
          pulumi.Input.mapOptionalInputValue<Condition, Map<String, dynamic>>(
              conditionValue, (value) => value.toMap());
    }
    map['members'] = members;
    map['name'] = name;
    map['role'] = role;
    return map;
  }

  factory DatasetHl7V2StoreIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return DatasetHl7V2StoreIamBindingArgs(
      condition: map['condition'] == null
          ? null
          : Condition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>()),
      members: (map['members'] as List).cast<String>(),
      name: map['name'] as String,
      role: map['role'] as String,
    );
  }
}
