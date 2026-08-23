// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_desktopvirtualization_get_host_pool_args_doc}
/// Arguments for getHostPool.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_get_host_pool_args_doc}
class GetHostPoolArgs {
  /// The name of the host pool within the specified resource group
  final pulumi.Input<String> hostPoolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetHostPoolArgs].
  /// [hostPoolName] The name of the host pool within the specified resource group
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetHostPoolArgs({
    required this.hostPoolName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostPoolName': hostPoolName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHostPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetHostPoolArgs(
      hostPoolName: pulumi.Input.fromValue(map['hostPoolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
