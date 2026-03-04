// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_get_global_reach_connection_args_doc}
/// Arguments for getGlobalReachConnection.
/// {@endtemplate}
/// {@macro pulumi_avs_get_global_reach_connection_args_doc}
class GetGlobalReachConnectionArgs {
  /// Name of the global reach connection
  final pulumi.Input<String> globalReachConnectionName;

  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGlobalReachConnectionArgs].
  /// [globalReachConnectionName] Name of the global reach connection
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetGlobalReachConnectionArgs({
    required this.globalReachConnectionName,
    required this.privateCloudName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalReachConnectionName': globalReachConnectionName,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGlobalReachConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalReachConnectionArgs(
      globalReachConnectionName: pulumi.Input.fromValue(
        map['globalReachConnectionName'] as String,
      ),
      privateCloudName: pulumi.Input.fromValue(
        map['privateCloudName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
