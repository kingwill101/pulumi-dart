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
    required String namespaceName,
    required String privateEndpointConnectionName,
    required String resourceGroupName,
  }) :
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      privateEndpointConnectionName = pulumi.Input.asInput<String>(privateEndpointConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionArgs(
      namespaceName: map['namespaceName'] as String,
      privateEndpointConnectionName: map['privateEndpointConnectionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

