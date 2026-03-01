// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_container_apps_session_pool_args_doc}
/// Arguments for getContainerAppsSessionPool.
/// {@endtemplate}
/// {@macro pulumi_app_get_container_apps_session_pool_args_doc}
class GetContainerAppsSessionPoolArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the session pool.
  final pulumi.Input<String> sessionPoolName;

  /// Creates a new [GetContainerAppsSessionPoolArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sessionPoolName] Name of the session pool.
  GetContainerAppsSessionPoolArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sessionPoolName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sessionPoolName = pulumi.Input.asInput<String>(sessionPoolName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sessionPoolName': sessionPoolName,
    };
  }

  factory GetContainerAppsSessionPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetContainerAppsSessionPoolArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sessionPoolName: pulumi.Output.create<String>(map['sessionPoolName'] as String),
    );
  }
}

