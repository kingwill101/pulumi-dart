// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_private_endpoint_connection_args_doc}
/// Arguments for getPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_private_endpoint_connection_args_doc}
class GetPrivateEndpointConnectionArgs {
  /// The name of the parent resource (namely, either, the topic name, domain name, or partner namespace name or namespace name).
  final pulumi.Input<String> parentName;
  /// The type of the parent resource. This can be either \'topics\', \'domains\', or \'partnerNamespaces\' or \'namespaces\'.
  final pulumi.Input<String> parentType;
  /// The name of the private endpoint connection connection.
  final pulumi.Input<String> privateEndpointConnectionName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrivateEndpointConnectionArgs].
  /// [parentName] The name of the parent resource (namely, either, the topic name, domain name, or partner namespace name or namespace name).
  /// [parentType] The type of the parent resource. This can be either \'topics\', \'domains\', or \'partnerNamespaces\' or \'namespaces\'.
  /// [privateEndpointConnectionName] The name of the private endpoint connection connection.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  GetPrivateEndpointConnectionArgs({
    required String parentName,
    required String parentType,
    required String privateEndpointConnectionName,
    required String resourceGroupName,
  }) :
      parentName = pulumi.Input.asInput<String>(parentName),
      parentType = pulumi.Input.asInput<String>(parentType),
      privateEndpointConnectionName = pulumi.Input.asInput<String>(privateEndpointConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentName': parentName,
      'parentType': parentType,
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionArgs(
      parentName: map['parentName'] as String,
      parentType: map['parentType'] as String,
      privateEndpointConnectionName: map['privateEndpointConnectionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

