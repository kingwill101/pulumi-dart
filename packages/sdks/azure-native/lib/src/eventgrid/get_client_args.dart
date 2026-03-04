// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_client_args_doc}
/// Arguments for getClient.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_client_args_doc}
class GetClientArgs {
  /// Name of the client.
  final pulumi.Input<String> clientName;

  /// Name of the namespace.
  final pulumi.Input<String> namespaceName;

  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetClientArgs].
  /// [clientName] Name of the client.
  /// [namespaceName] Name of the namespace.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  GetClientArgs({
    required this.clientName,
    required this.namespaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientName': clientName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetClientArgs.fromMap(Map<String, dynamic> map) {
    return GetClientArgs(
      clientName: pulumi.Input.fromValue(map['clientName'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
