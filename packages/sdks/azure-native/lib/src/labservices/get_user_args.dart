// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_labservices_get_user_args_doc}
/// Arguments for getUser.
/// {@endtemplate}
/// {@macro pulumi_labservices_get_user_args_doc}
class GetUserArgs {
  /// The name of the lab that uniquely identifies it within containing lab plan. Used in resource URIs.
  final pulumi.Input<String> labName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the user that uniquely identifies it within containing lab. Used in resource URIs.
  final pulumi.Input<String> userName;

  /// Creates a new [GetUserArgs].
  /// [labName] The name of the lab that uniquely identifies it within containing lab plan. Used in resource URIs.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [userName] The name of the user that uniquely identifies it within containing lab. Used in resource URIs.
  GetUserArgs({
    required pulumi.Output<String> labName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> userName,
  }) :
      labName = pulumi.Input.asInput<String>(labName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      userName = pulumi.Input.asInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labName': labName,
      'resourceGroupName': resourceGroupName,
      'userName': userName,
    };
  }

  factory GetUserArgs.fromMap(Map<String, dynamic> map) {
    return GetUserArgs(
      labName: pulumi.Output.create<String>(map['labName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      userName: pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

