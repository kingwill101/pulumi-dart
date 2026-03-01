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
  final pulumi.Input<String>? description;
  /// Resolver Name.
  final pulumi.Input<String>? displayName;
  /// Path is type/field being resolved.
  final pulumi.Input<String>? path;
  /// Resolver identifier within a GraphQL API. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? resolverId;
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
  GraphQLApiResolverArgs({
    required pulumi.Output<String> apiId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? path,
    pulumi.Output<String>? resolverId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      path = pulumi.Input.asOptionalInput<String>(path),
      resolverId = pulumi.Input.asOptionalInput<String>(resolverId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

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
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      path: map['path'] == null ? null : pulumi.Output.create<String>(map['path'] as String),
      resolverId: map['resolverId'] == null ? null : pulumi.Output.create<String>(map['resolverId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

