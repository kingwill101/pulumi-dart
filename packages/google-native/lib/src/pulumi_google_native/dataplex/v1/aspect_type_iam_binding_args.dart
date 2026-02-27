// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import '../../iam/v1/condition8.dart';

/// The set of arguments for AspectTypeIamBinding.
class AspectTypeIamBindingArgs {
  /// An IAM Condition for a given binding.
  final Input<Condition8>? condition;

  /// Identities that will be granted the privilege in role. Each entry can have one of the following values:
  ///
  /// * user:{emailid}: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * serviceAccount:{emailid}: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * group:{emailid}: An email address that represents a Google group. For example, admins@example.com.
  /// * domain:{domain}: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final Input<List<String>> members;

  /// The name of the resource to manage IAM policies for.
  final Input<String> name;

  /// The role that should be applied. Only one `IamBinding` can be used per role.
  final Input<String> role;

  AspectTypeIamBindingArgs({
    this.condition,
    required this.members,
    required this.name,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] =
          Input.mapOptionalInputValue<Condition8, Map<String, dynamic>>(
              conditionValue, (value) => value.toMap());
    }
    map['members'] = members;
    map['name'] = name;
    map['role'] = role;
    return map;
  }

  factory AspectTypeIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return AspectTypeIamBindingArgs(
      condition: Input.asOptionalInput<Condition8>(map['condition']),
      members: Input.asInput<List<String>>(map['members']),
      name: Input.asInput<String>(map['name']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
