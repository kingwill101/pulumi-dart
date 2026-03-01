// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_client_group_args_doc}
/// The set of arguments for ClientGroup.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_client_group_args_doc}
class ClientGroupArgs {
  /// The client group name.
  final pulumi.Input<String>? clientGroupName;
  /// Description for the Client Group resource.
  final pulumi.Input<String>? description;
  /// Name of the namespace.
  final pulumi.Input<String> namespaceName;
  /// The grouping query for the clients.
  /// Example : attributes.keyName IN ['a', 'b', 'c'].
  final pulumi.Input<String>? query;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ClientGroupArgs].
  /// [clientGroupName] The client group name.
  /// [description] Description for the Client Group resource.
  /// [namespaceName] Name of the namespace.
  /// [query] The grouping query for the clients.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  ClientGroupArgs({
    pulumi.Output<String>? clientGroupName,
    pulumi.Output<String>? description,
    required pulumi.Output<String> namespaceName,
    pulumi.Output<String>? query,
    required pulumi.Output<String> resourceGroupName,
  }) :
      clientGroupName = pulumi.Input.asOptionalInput<String>(clientGroupName),
      description = pulumi.Input.asOptionalInput<String>(description),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      query = pulumi.Input.asOptionalInput<String>(query),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      clientGroupName: map['clientGroupName'] == null ? null : pulumi.Output.create<String>(map['clientGroupName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      query: map['query'] == null ? null : pulumi.Output.create<String>(map['query'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

