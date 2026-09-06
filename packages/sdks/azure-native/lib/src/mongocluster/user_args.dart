// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_properties.dart';

/// {@template pulumi_mongocluster_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_mongocluster_user_args_doc}
class UserArgs {
  /// The name of the mongo cluster.
  final pulumi.Input<String> mongoClusterName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<UserProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the mongo cluster user.
  final pulumi.Input<String?>? userName;

  /// Creates a new [UserArgs].
  /// [mongoClusterName] The name of the mongo cluster.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [userName] The name of the mongo cluster user.
  const UserArgs({
    required this.mongoClusterName,
    this.properties,
    required this.resourceGroupName,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mongoClusterName': mongoClusterName,
      'properties': ?pulumi.Input.mapOptionalInputValue<UserProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'userName': ?userName,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      mongoClusterName: pulumi.Input.fromValue(map['mongoClusterName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
