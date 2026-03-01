// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_list_policy_set_definition_version_all_at_management_group_args_doc}
/// Arguments for listPolicySetDefinitionVersionAllAtManagementGroup.
/// {@endtemplate}
/// {@macro pulumi_authorization_list_policy_set_definition_version_all_at_management_group_args_doc}
class ListPolicySetDefinitionVersionAllAtManagementGroupArgs {
  /// The name of the management group. The name is case insensitive.
  final pulumi.Input<String> managementGroupName;

  /// Creates a new [ListPolicySetDefinitionVersionAllAtManagementGroupArgs].
  /// [managementGroupName] The name of the management group. The name is case insensitive.
  ListPolicySetDefinitionVersionAllAtManagementGroupArgs({
    required pulumi.Output<String> managementGroupName,
  }) :
      managementGroupName = pulumi.Input.asInput<String>(managementGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupName': managementGroupName,
    };
  }

  factory ListPolicySetDefinitionVersionAllAtManagementGroupArgs.fromMap(Map<String, dynamic> map) {
    return ListPolicySetDefinitionVersionAllAtManagementGroupArgs(
      managementGroupName: pulumi.Output.create<String>(map['managementGroupName'] as String),
    );
  }
}

