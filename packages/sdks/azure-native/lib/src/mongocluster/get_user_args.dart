// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mongocluster_get_user_args_doc}
/// Arguments for getUser.
/// {@endtemplate}
/// {@macro pulumi_mongocluster_get_user_args_doc}
class GetUserArgs {
  /// The name of the mongo cluster.
  final pulumi.Input<String> mongoClusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the mongo cluster user.
  final pulumi.Input<String> userName;

  /// Creates a new [GetUserArgs].
  /// [mongoClusterName] The name of the mongo cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [userName] The name of the mongo cluster user.
  GetUserArgs({
    required pulumi.Output<String> mongoClusterName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> userName,
  }) :
      mongoClusterName = pulumi.Input.asInput<String>(mongoClusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      userName = pulumi.Input.asInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mongoClusterName': mongoClusterName,
      'resourceGroupName': resourceGroupName,
      'userName': userName,
    };
  }

  factory GetUserArgs.fromMap(Map<String, dynamic> map) {
    return GetUserArgs(
      mongoClusterName: pulumi.Output.create<String>(map['mongoClusterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      userName: pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

