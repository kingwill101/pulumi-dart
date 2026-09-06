// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_graph_qlapi_resolver_args_doc}
/// The set of arguments for GraphQLApiResolver.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_graph_qlapi_resolver_args_doc}
class GraphQLApiResolverArgs {
  /// API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  final pulumi.Input<String> apiId;
  /// Description of the resolver. May include HTML formatting tags.
  final pulumi.Input<String?>? description;
  /// Resolver Name.
  final pulumi.Input<String?>? displayName;
  /// Path is type/field being resolved.
  final pulumi.Input<String?>? path;
  /// Resolver identifier within a GraphQL API. Must be unique in the current API Management service instance.
  final pulumi.Input<String?>? resolverId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GraphQLApiResolverArgs].
  /// [apiId] API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  /// [description] Description of the resolver. May include HTML formatting tags.
  /// [displayName] Resolver Name.
  /// [path] Path is type/field being resolved.
  /// [resolverId] Resolver identifier within a GraphQL API. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  const GraphQLApiResolverArgs({
    required this.apiId,
    this.description,
    this.displayName,
    this.path,
    this.resolverId,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'description': ?description,
      'displayName': ?displayName,
      'path': ?path,
      'resolverId': ?resolverId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GraphQLApiResolverArgs.fromMap(Map<String, dynamic> map) {
    return GraphQLApiResolverArgs(
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resolverId: (() { final guardedValue = map['resolverId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
