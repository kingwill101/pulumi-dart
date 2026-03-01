// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_list_policy_definition_version_all_at_management_group_args_doc}
/// Arguments for listPolicyDefinitionVersionAllAtManagementGroup.
/// {@endtemplate}
/// {@macro pulumi_authorization_list_policy_definition_version_all_at_management_group_args_doc}
class ListPolicyDefinitionVersionAllAtManagementGroupArgs {
  /// The name of the management group. The name is case insensitive.
  final pulumi.Input<String> managementGroupName;

  /// Creates a new [ListPolicyDefinitionVersionAllAtManagementGroupArgs].
  /// [managementGroupName] The name of the management group. The name is case insensitive.
  ListPolicyDefinitionVersionAllAtManagementGroupArgs({
    required String managementGroupName,
  }) :
      managementGroupName = pulumi.Input.asInput<String>(managementGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupName': managementGroupName,
    };
  }

  factory ListPolicyDefinitionVersionAllAtManagementGroupArgs.fromMap(Map<String, dynamic> map) {
    return ListPolicyDefinitionVersionAllAtManagementGroupArgs(
      managementGroupName: map['managementGroupName'] as String,
    );
  }
}

