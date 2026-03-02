// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_graph_qlapi_resolver_policy_args_doc}
/// The set of arguments for GraphQLApiResolverPolicy.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_graph_qlapi_resolver_policy_args_doc}
class GraphQLApiResolverPolicyArgs {
  /// API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  final pulumi.Input<String> apiId;
  /// Format of the policyContent.
  final pulumi.Input<String>? format;
  /// The identifier of the Policy.
  final pulumi.Input<String>? policyId;
  /// Resolver identifier within a GraphQL API. Must be unique in the current API Management service instance.
  final pulumi.Input<String> resolverId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Contents of the Policy as defined by the format.
  final pulumi.Input<String> value;

  /// Creates a new [GraphQLApiResolverPolicyArgs].
  /// [apiId] API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  /// [format] Format of the policyContent.
  /// [policyId] The identifier of the Policy.
  /// [resolverId] Resolver identifier within a GraphQL API. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [value] Contents of the Policy as defined by the format.
  GraphQLApiResolverPolicyArgs({
    required this.apiId,
    this.format,
    this.policyId,
    required this.resolverId,
    required this.resourceGroupName,
    required this.serviceName,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'format': ?format,
      'policyId': ?policyId,
      'resolverId': resolverId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'value': value,
    };
  }

  factory GraphQLApiResolverPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GraphQLApiResolverPolicyArgs(
      apiId: (map['apiId'] as String).input(),
      format: map['format'] == null ? null : (map['format'] as String).input(),
      policyId: map['policyId'] == null ? null : (map['policyId'] as String).input(),
      resolverId: (map['resolverId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

