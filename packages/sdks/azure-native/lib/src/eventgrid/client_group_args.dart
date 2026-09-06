// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_client_group_args_doc}
/// The set of arguments for ClientGroup.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_client_group_args_doc}
class ClientGroupArgs {
  /// The client group name.
  final pulumi.Input<String?>? clientGroupName;
  /// Description for the Client Group resource.
  final pulumi.Input<String?>? description;
  /// Name of the namespace.
  final pulumi.Input<String> namespaceName;
  /// The grouping query for the clients.
  /// Example : attributes.keyName IN ['a', 'b', 'c'].
  final pulumi.Input<String?>? query;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ClientGroupArgs].
  /// [clientGroupName] The client group name.
  /// [description] Description for the Client Group resource.
  /// [namespaceName] Name of the namespace.
  /// [query] The grouping query for the clients.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  const ClientGroupArgs({
    this.clientGroupName,
    this.description,
    required this.namespaceName,
    this.query,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientGroupName': ?clientGroupName,
      'description': ?description,
      'namespaceName': namespaceName,
      'query': ?query,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ClientGroupArgs.fromMap(Map<String, dynamic> map) {
    return ClientGroupArgs(
      clientGroupName: (() { final guardedValue = map['clientGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
