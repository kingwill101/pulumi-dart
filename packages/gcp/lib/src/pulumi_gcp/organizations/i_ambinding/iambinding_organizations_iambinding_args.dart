// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../iambinding_condition/iambinding_condition_organizations.dart';

/// The set of arguments for IAMBinding.
class IAMBindingOrganizationsIAmbindingArgs {
  final pulumi.Input<IAMBindingConditionOrganizations>? condition;

  /// A list of users that the role should apply to. For more details on format and restrictions see https://cloud.google.com/billing/reference/rest/v1/Policy#Binding
  final pulumi.Input<List<String>> members;

  /// The numeric ID of the organization in which you want to create a custom role.
  final pulumi.Input<String> orgId;

  /// The role that should be applied. Only one
  /// `gcp.organizations.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  IAMBindingOrganizationsIAmbindingArgs({
    this.condition,
    required this.members,
    required this.orgId,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          IAMBindingConditionOrganizations,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['members'] = members;
    map['orgId'] = orgId;
    map['role'] = role;
    return map;
  }

  factory IAMBindingOrganizationsIAmbindingArgs.fromMap(
      Map<String, dynamic> map) {
    return IAMBindingOrganizationsIAmbindingArgs(
      condition: pulumi.Input.asOptionalInput<IAMBindingConditionOrganizations>(
          map['condition']),
      members: pulumi.Input.asInput<List<String>>(map['members']),
      orgId: pulumi.Input.asInput<String>(map['orgId']),
      role: pulumi.Input.asInput<String>(map['role']),
    );
  }
}
