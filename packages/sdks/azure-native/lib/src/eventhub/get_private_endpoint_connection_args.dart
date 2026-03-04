// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_get_private_endpoint_connection_args_doc}
/// Arguments for getPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_eventhub_get_private_endpoint_connection_args_doc}
class GetPrivateEndpointConnectionArgs {
  /// The Namespace name
  final pulumi.Input<String> namespaceName;

  /// The PrivateEndpointConnection name
  final pulumi.Input<String> privateEndpointConnectionName;

  /// Name of the resource group within the azure subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrivateEndpointConnectionArgs].
  /// [namespaceName] The Namespace name
  /// [privateEndpointConnectionName] The PrivateEndpointConnection name
  /// [resourceGroupName] Name of the resource group within the azure subscription.
  GetPrivateEndpointConnectionArgs({
    required this.namespaceName,
    required this.privateEndpointConnectionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionArgs(
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      privateEndpointConnectionName: pulumi.Input.fromValue(
        map['privateEndpointConnectionName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
