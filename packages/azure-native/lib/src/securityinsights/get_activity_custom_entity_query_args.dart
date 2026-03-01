// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_activity_custom_entity_query_args_doc}
/// Arguments for getActivityCustomEntityQuery.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_activity_custom_entity_query_args_doc}
class GetActivityCustomEntityQueryArgs {
  /// entity query ID
  final pulumi.Input<String> entityQueryId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetActivityCustomEntityQueryArgs].
  /// [entityQueryId] entity query ID
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetActivityCustomEntityQueryArgs({
    required String entityQueryId,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      entityQueryId = pulumi.Input.asInput<String>(entityQueryId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityQueryId': entityQueryId,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetActivityCustomEntityQueryArgs.fromMap(Map<String, dynamic> map) {
    return GetActivityCustomEntityQueryArgs(
      entityQueryId: map['entityQueryId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

