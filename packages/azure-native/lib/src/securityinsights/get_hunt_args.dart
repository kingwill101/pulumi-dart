// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_hunt_args_doc}
/// Arguments for getHunt.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_hunt_args_doc}
class GetHuntArgs {
  /// The hunt id (GUID)
  final pulumi.Input<String> huntId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetHuntArgs].
  /// [huntId] The hunt id (GUID)
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetHuntArgs({
    required String huntId,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      huntId = pulumi.Input.asInput<String>(huntId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'huntId': huntId,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetHuntArgs.fromMap(Map<String, dynamic> map) {
    return GetHuntArgs(
      huntId: map['huntId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

