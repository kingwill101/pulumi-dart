// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_graph_qlapi_resolver_args_doc}
/// Arguments for getGraphQLApiResolver.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_graph_qlapi_resolver_args_doc}
class GetGraphQLApiResolverArgs {
  /// API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  final pulumi.Input<String> apiId;
  /// Resolver identifier within a GraphQL API. Must be unique in the current API Management service instance.
  final pulumi.Input<String> resolverId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetGraphQLApiResolverArgs].
  /// [apiId] API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  /// [resolverId] Resolver identifier within a GraphQL API. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetGraphQLApiResolverArgs({
    required String apiId,
    required String resolverId,
    required String resourceGroupName,
    required String serviceName,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      resolverId = pulumi.Input.asInput<String>(resolverId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'resolverId': resolverId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetGraphQLApiResolverArgs.fromMap(Map<String, dynamic> map) {
    return GetGraphQLApiResolverArgs(
      apiId: map['apiId'] as String,
      resolverId: map['resolverId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

