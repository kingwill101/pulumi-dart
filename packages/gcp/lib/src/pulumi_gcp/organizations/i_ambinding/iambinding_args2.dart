// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../iambinding_condition/iambinding_condition2.dart';

/// The set of arguments for IAMBinding.
class IAMBindingArgs2 {
  final Input<IAMBindingCondition2>? condition;

  /// A list of users that the role should apply to. For more details on format and restrictions see https://cloud.google.com/billing/reference/rest/v1/Policy#Binding
  final Input<List<String>> members;

  /// The numeric ID of the organization in which you want to create a custom role.
  final Input<String> orgId;

  /// The role that should be applied. Only one
  /// `gcp.organizations.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final Input<String> role;

  IAMBindingArgs2({
    this.condition,
    required this.members,
    required this.orgId,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<IAMBindingCondition2,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['members'] = members;
    map['orgId'] = orgId;
    map['role'] = role;
    return map;
  }

  factory IAMBindingArgs2.fromMap(Map<String, dynamic> map) {
    return IAMBindingArgs2(
      condition: Input.asOptionalInput<IAMBindingCondition2>(map['condition']),
      members: Input.asInput<List<String>>(map['members']),
      orgId: Input.asInput<String>(map['orgId']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
