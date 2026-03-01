// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazure_get_private_endpoint_connection_args_doc}
/// Arguments for getPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_offazure_get_private_endpoint_connection_args_doc}
class GetPrivateEndpointConnectionArgs {
  /// Private link resource name.
  final pulumi.Input<String> peConnectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Site name.
  final pulumi.Input<String> siteName;

  /// Creates a new [GetPrivateEndpointConnectionArgs].
  /// [peConnectionName] Private link resource name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] Site name.
  GetPrivateEndpointConnectionArgs({
    required String peConnectionName,
    required String resourceGroupName,
    required String siteName,
  }) :
      peConnectionName = pulumi.Input.asInput<String>(peConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asInput<String>(siteName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peConnectionName': peConnectionName,
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
    };
  }

  factory GetPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionArgs(
      peConnectionName: map['peConnectionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      siteName: map['siteName'] as String,
    );
  }
}

