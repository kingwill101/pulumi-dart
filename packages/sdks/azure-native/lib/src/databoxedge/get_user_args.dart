// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databoxedge_get_user_args_doc}
/// Arguments for getUser.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_get_user_args_doc}
class GetUserArgs {
  /// The device name.
  final pulumi.Input<String> deviceName;

  /// The user name.
  final pulumi.Input<String> name;

  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetUserArgs].
  /// [deviceName] The device name.
  /// [name] The user name.
  /// [resourceGroupName] The resource group name.
  GetUserArgs({
    required this.deviceName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetUserArgs.fromMap(Map<String, dynamic> map) {
    return GetUserArgs(
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
