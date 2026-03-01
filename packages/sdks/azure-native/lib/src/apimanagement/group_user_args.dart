// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_group_user_args_doc}
/// The set of arguments for GroupUser.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_group_user_args_doc}
class GroupUserArgs {
  /// Group identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> groupId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// User identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? userId;

  /// Creates a new [GroupUserArgs].
  /// [groupId] Group identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [userId] User identifier. Must be unique in the current API Management service instance.
  GroupUserArgs({
    required pulumi.Output<String> groupId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    pulumi.Output<String>? userId,
  }) :
      groupId = pulumi.Input.asInput<String>(groupId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      userId = pulumi.Input.asOptionalInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'userId': ?userId,
    };
  }

  factory GroupUserArgs.fromMap(Map<String, dynamic> map) {
    return GroupUserArgs(
      groupId: pulumi.Output.create<String>(map['groupId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

