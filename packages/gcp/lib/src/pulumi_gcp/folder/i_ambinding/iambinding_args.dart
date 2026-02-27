// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../iambinding_condition/iambinding_condition.dart';

/// The set of arguments for IAMBinding.
class IAMBindingArgs {
  final Input<IAMBindingCondition>? condition;

  /// The resource name of the folder the policy is attached to. Its format is folders/{folder_id}.
  final Input<String> folder;

  /// An array of identities that will be granted the privilege in the `role`.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that is associated with a specific Google account. For example, alice@gmail.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * For more details on format and restrictions see https://cloud.google.com/billing/reference/rest/v1/Policy#Binding
  final Input<List<String>> members;

  /// The role that should be applied. Only one
  /// `gcp.folder.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final Input<String> role;

  IAMBindingArgs({
    this.condition,
    required this.folder,
    required this.members,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<IAMBindingCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['folder'] = folder;
    map['members'] = members;
    map['role'] = role;
    return map;
  }

  factory IAMBindingArgs.fromMap(Map<String, dynamic> map) {
    return IAMBindingArgs(
      condition: Input.asOptionalInput<IAMBindingCondition>(map['condition']),
      folder: Input.asInput<String>(map['folder']),
      members: Input.asInput<List<String>>(map['members']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
