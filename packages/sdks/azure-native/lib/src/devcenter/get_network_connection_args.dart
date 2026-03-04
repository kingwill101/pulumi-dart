// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_network_connection_args_doc}
/// Arguments for getNetworkConnection.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_network_connection_args_doc}
class GetNetworkConnectionArgs {
  /// Name of the Network Connection that can be applied to a Pool.
  final pulumi.Input<String> networkConnectionName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkConnectionArgs].
  /// [networkConnectionName] Name of the Network Connection that can be applied to a Pool.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNetworkConnectionArgs({
    required this.networkConnectionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkConnectionName': networkConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkConnectionArgs(
      networkConnectionName: pulumi.Input.fromValue(
        map['networkConnectionName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
