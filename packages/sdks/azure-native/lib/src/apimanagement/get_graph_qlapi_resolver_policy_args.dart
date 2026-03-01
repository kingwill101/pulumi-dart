// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_graph_qlapi_resolver_policy_args_doc}
/// Arguments for getGraphQLApiResolverPolicy.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_graph_qlapi_resolver_policy_args_doc}
class GetGraphQLApiResolverPolicyArgs {
  /// API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  final pulumi.Input<String> apiId;
  /// Policy Export Format.
  final pulumi.Input<String>? format;
  /// The identifier of the Policy.
  final pulumi.Input<String> policyId;
  /// Resolver identifier within a GraphQL API. Must be unique in the current API Management service instance.
  final pulumi.Input<String> resolverId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetGraphQLApiResolverPolicyArgs].
  /// [apiId] API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  /// [format] Policy Export Format.
  /// [policyId] The identifier of the Policy.
  /// [resolverId] Resolver identifier within a GraphQL API. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetGraphQLApiResolverPolicyArgs({
    required pulumi.Output<String> apiId,
    pulumi.Output<String>? format,
    required pulumi.Output<String> policyId,
    required pulumi.Output<String> resolverId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      format = pulumi.Input.asOptionalInput<String>(format),
      policyId = pulumi.Input.asInput<String>(policyId),
      resolverId = pulumi.Input.asInput<String>(resolverId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'format': ?format,
      'policyId': policyId,
      'resolverId': resolverId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetGraphQLApiResolverPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetGraphQLApiResolverPolicyArgs(
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      format: map['format'] == null ? null : pulumi.Output.create<String>(map['format'] as String),
      policyId: pulumi.Output.create<String>(map['policyId'] as String),
      resolverId: pulumi.Output.create<String>(map['resolverId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

