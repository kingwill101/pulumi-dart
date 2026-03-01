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
    required pulumi.Output<String> clientName,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      clientName = pulumi.Input.asInput<String>(clientName),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientName': clientName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetClientArgs.fromMap(Map<String, dynamic> map) {
    return GetClientArgs(
      clientName: pulumi.Output.create<String>(map['clientName'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

