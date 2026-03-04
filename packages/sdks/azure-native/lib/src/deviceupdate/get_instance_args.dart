// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deviceupdate_get_instance_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_deviceupdate_get_instance_args_doc}
class GetInstanceArgs {
  /// Account name.
  final pulumi.Input<String> accountName;

  /// Instance name.
  final pulumi.Input<String> instanceName;

  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetInstanceArgs].
  /// [accountName] Account name.
  /// [instanceName] Instance name.
  /// [resourceGroupName] The resource group name.
  GetInstanceArgs({
    required this.accountName,
    required this.instanceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'instanceName': instanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
