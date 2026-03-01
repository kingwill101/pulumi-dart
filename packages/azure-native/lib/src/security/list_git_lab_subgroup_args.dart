// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_list_git_lab_subgroup_args_doc}
/// Arguments for listGitLabSubgroup.
/// {@endtemplate}
/// {@macro pulumi_security_list_git_lab_subgroup_args_doc}
class ListGitLabSubgroupArgs {
  /// The GitLab group fully-qualified name.
  final pulumi.Input<String> groupFQName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The security connector name.
  final pulumi.Input<String> securityConnectorName;

  /// Creates a new [ListGitLabSubgroupArgs].
  /// [groupFQName] The GitLab group fully-qualified name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securityConnectorName] The security connector name.
  ListGitLabSubgroupArgs({
    required String groupFQName,
    required String resourceGroupName,
    required String securityConnectorName,
  }) :
      groupFQName = pulumi.Input.asInput<String>(groupFQName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      securityConnectorName = pulumi.Input.asInput<String>(securityConnectorName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupFQName': groupFQName,
      'resourceGroupName': resourceGroupName,
      'securityConnectorName': securityConnectorName,
    };
  }

  factory ListGitLabSubgroupArgs.fromMap(Map<String, dynamic> map) {
    return ListGitLabSubgroupArgs(
      groupFQName: map['groupFQName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      securityConnectorName: map['securityConnectorName'] as String,
    );
  }
}

