// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_user_get_user_args_doc}
/// Arguments for getUser.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_user_get_user_args_doc}
class GetUserArgs {
  /// The Name of the API Management Service in which this User exists.
  final pulumi.Input<String> apiManagementName;
  /// The Name of the Resource Group in which the API Management Service exists.
  final pulumi.Input<String> resourceGroupName;
  /// The Identifier for the User.
  final pulumi.Input<String> userId;

  /// Creates a new [GetUserArgs].
  /// [apiManagementName] The Name of the API Management Service in which this User exists.
  /// [resourceGroupName] The Name of the Resource Group in which the API Management Service exists.
  /// [userId] The Identifier for the User.
  GetUserArgs({
    required String apiManagementName,
    required String resourceGroupName,
    required String userId,
  }) :
      apiManagementName = pulumi.Input.asInput<String>(apiManagementName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      userId = pulumi.Input.asInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'resourceGroupName': resourceGroupName,
      'userId': userId,
    };
  }

  factory GetUserArgs.fromMap(Map<String, dynamic> map) {
    return GetUserArgs(
      apiManagementName: map['apiManagementName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      userId: map['userId'] as String,
    );
  }
}

