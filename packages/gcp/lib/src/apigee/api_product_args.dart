// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_product_attribute.dart';
import 'api_product_graphql_operation_group.dart';
import 'api_product_grpc_operation_group.dart';
import 'api_product_operation_group.dart';

/// {@template pulumi_apigee_api_product_api_product_args_doc}
/// The set of arguments for ApiProduct.
/// {@endtemplate}
/// {@macro pulumi_apigee_api_product_api_product_args_doc}
class ApiProductArgs {
  /// Comma-separated list of API resources to be bundled in the API product. By default, the resource paths are mapped from the proxy.pathsuffix variable.
  /// The proxy path suffix is defined as the URI fragment following the ProxyEndpoint base path. For example, if the apiResources element is defined to be /forecastrss and the base path defined for the API proxy is /weather, then only requests to /weather/forecastrss are permitted by the API product.
  final pulumi.Input<List<String>>? apiResources;

  /// Flag that specifies how API keys are approved to access the APIs defined by the API product.
  /// Valid values are `auto` or `manual`.
  /// Possible values are: `auto`, `manual`.
  final pulumi.Input<String>? approvalType;

  /// Array of attributes that may be used to extend the default API product profile with customer-specific metadata. You can specify a maximum of 18 attributes.
  /// Use this property to specify the access level of the API product as either public, private, or internal.
  /// Structure is documented below.
  final pulumi.Input<List<ApiProductAttribute>>? attributes;

  /// Description of the API product. Include key information about the API product that is not captured by other fields.
  final pulumi.Input<String>? description;

  /// Name displayed in the UI or developer portal to developers registering for API access.
  final pulumi.Input<String> displayName;

  /// Comma-separated list of environment names to which the API product is bound. Requests to environments that are not listed are rejected.
  /// By specifying one or more environments, you can bind the resources listed in the API product to a specific environment, preventing developers from accessing those resources through API proxies deployed in another environment.
  final pulumi.Input<List<String>>? environments;

  /// Configuration used to group Apigee proxies or remote services with graphQL operation name, graphQL operation type and quotas. This grouping allows us to precisely set quota for a particular combination of graphQL name and operation type for a particular proxy request. If graphQL name is not set, this would imply quota will be applied on all graphQL requests matching the operation type.
  /// Structure is documented below.
  final pulumi.Input<ApiProductGraphqlOperationGroup>? graphqlOperationGroup;

  /// Optional. Configuration used to group Apigee proxies with gRPC services and method names. This grouping allows us to set quota for a particular proxy with the gRPC service name and method. If a method name is not set, this implies quota and authorization are applied to all gRPC methods implemented by that proxy for that particular gRPC service.
  /// Structure is documented below.
  final pulumi.Input<ApiProductGrpcOperationGroup>? grpcOperationGroup;

  /// Internal name of the API product.
  final pulumi.Input<String>? name;

  /// Configuration used to group Apigee proxies or remote services with resources, method types, and quotas. The resource refers to the resource URI (excluding the base path). With this grouping, the API product creator is able to fine-tune and give precise control over which REST methods have access to specific resources and how many calls can be made (using the quota setting).
  /// Note: The apiResources setting cannot be specified for both the API product and operation group; otherwise the call will fail.
  /// Structure is documented below.
  final pulumi.Input<ApiProductOperationGroup>? operationGroup;

  /// The Apigee Organization associated with the Apigee API product,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String> orgId;

  /// Comma-separated list of API proxy names to which this API product is bound. By specifying API proxies, you can associate resources in the API product with specific API proxies, preventing developers from accessing those resources through other API proxies.
  /// Apigee rejects requests to API proxies that are not listed.
  final pulumi.Input<List<String>>? proxies;

  /// Number of request messages permitted per app by this API product for the specified quotaInterval and quotaTimeUnit.
  /// For example, a quota of 50, for a quotaInterval of 12 and a quotaTimeUnit of hours means 50 requests are allowed every 12 hours.
  final pulumi.Input<String>? quota;

  /// Scope of the quota decides how the quota counter gets applied and evaluate for quota violation. If the Scope is set as PROXY, then all the operations defined for the APIproduct that are associated with the same proxy will share the same quota counter set at the APIproduct level, making it a global counter at a proxy level. If the Scope is set as OPERATION, then each operations get the counter set at the API product dedicated, making it a local counter. Note that, the QuotaCounterScope applies only when an operation does not have dedicated quota set for itself.
  /// Possible values are: `QUOTA_COUNTER_SCOPE_UNSPECIFIED`, `PROXY`, `OPERATION`.
  final pulumi.Input<String>? quotaCounterScope;

  /// Time interval over which the number of request messages is calculated.
  final pulumi.Input<String>? quotaInterval;

  /// Time unit defined for the quotaInterval. Valid values include second, minute, hour, day, month or year.
  final pulumi.Input<String>? quotaTimeUnit;

  /// Comma-separated list of OAuth scopes that are validated at runtime. Apigee validates that the scopes in any access token presented match the scopes defined in the OAuth policy associated with the API product.
  final pulumi.Input<List<String>>? scopes;

  /// Optional. The resource ID of the parent Space. If not set, the parent resource will be the Organization.
  final pulumi.Input<String>? space;

  /// Creates a new [ApiProductArgs].
  /// [apiResources] Comma-separated list of API resources to be bundled in the API product. By default, the resource paths are mapped from the proxy.pathsuffix variable.
  /// [approvalType] Flag that specifies how API keys are approved to access the APIs defined by the API product.
  /// [attributes] Array of attributes that may be used to extend the default API product profile with customer-specific metadata. You can specify a maximum of 18 attributes.
  /// [description] Description of the API product. Include key information about the API product that is not captured by other fields.
  /// [displayName] Name displayed in the UI or developer portal to developers registering for API access.
  /// [environments] Comma-separated list of environment names to which the API product is bound. Requests to environments that are not listed are rejected.
  /// [graphqlOperationGroup] Configuration used to group Apigee proxies or remote services with graphQL operation name, graphQL operation type and quotas. This grouping allows us to precisely set quota for a particular combination of graphQL name and operation type for a particular proxy request. If graphQL name is not set, this would imply quota will be applied on all graphQL requests matching the operation type.
  /// [grpcOperationGroup] Optional. Configuration used to group Apigee proxies with gRPC services and method names. This grouping allows us to set quota for a particular proxy with the gRPC service name and method. If a method name is not set, this implies quota and authorization are applied to all gRPC methods implemented by that proxy for that particular gRPC service.
  /// [name] Internal name of the API product.
  /// [operationGroup] Configuration used to group Apigee proxies or remote services with resources, method types, and quotas. The resource refers to the resource URI (excluding the base path). With this grouping, the API product creator is able to fine-tune and give precise control over which REST methods have access to specific resources and how many calls can be made (using the quota setting).
  /// [orgId] The Apigee Organization associated with the Apigee API product,
  /// [proxies] Comma-separated list of API proxy names to which this API product is bound. By specifying API proxies, you can associate resources in the API product with specific API proxies, preventing developers from accessing those resources through other API proxies.
  /// [quota] Number of request messages permitted per app by this API product for the specified quotaInterval and quotaTimeUnit.
  /// [quotaCounterScope] Scope of the quota decides how the quota counter gets applied and evaluate for quota violation. If the Scope is set as PROXY, then all the operations defined for the APIproduct that are associated with the same proxy will share the same quota counter set at the APIproduct level, making it a global counter at a proxy level. If the Scope is set as OPERATION, then each operations get the counter set at the API product dedicated, making it a local counter. Note that, the QuotaCounterScope applies only when an operation does not have dedicated quota set for itself.
  /// [quotaInterval] Time interval over which the number of request messages is calculated.
  /// [quotaTimeUnit] Time unit defined for the quotaInterval. Valid values include second, minute, hour, day, month or year.
  /// [scopes] Comma-separated list of OAuth scopes that are validated at runtime. Apigee validates that the scopes in any access token presented match the scopes defined in the OAuth policy associated with the API product.
  /// [space] Optional. The resource ID of the parent Space. If not set, the parent resource will be the Organization.
  ApiProductArgs({
    List<String>? apiResources,
    String? approvalType,
    List<ApiProductAttribute>? attributes,
    String? description,
    required String displayName,
    List<String>? environments,
    ApiProductGraphqlOperationGroup? graphqlOperationGroup,
    ApiProductGrpcOperationGroup? grpcOperationGroup,
    String? name,
    ApiProductOperationGroup? operationGroup,
    required String orgId,
    List<String>? proxies,
    String? quota,
    String? quotaCounterScope,
    String? quotaInterval,
    String? quotaTimeUnit,
    List<String>? scopes,
    String? space,
  })  : apiResources = pulumi.Input.asOptionalInput<List<String>>(apiResources),
        approvalType = pulumi.Input.asOptionalInput<String>(approvalType),
        attributes =
            pulumi.Input.asOptionalInput<List<ApiProductAttribute>>(attributes),
        description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asInput<String>(displayName),
        environments = pulumi.Input.asOptionalInput<List<String>>(environments),
        graphqlOperationGroup =
            pulumi.Input.asOptionalInput<ApiProductGraphqlOperationGroup>(
                graphqlOperationGroup),
        grpcOperationGroup =
            pulumi.Input.asOptionalInput<ApiProductGrpcOperationGroup>(
                grpcOperationGroup),
        name = pulumi.Input.asOptionalInput<String>(name),
        operationGroup = pulumi.Input.asOptionalInput<ApiProductOperationGroup>(
            operationGroup),
        orgId = pulumi.Input.asInput<String>(orgId),
        proxies = pulumi.Input.asOptionalInput<List<String>>(proxies),
        quota = pulumi.Input.asOptionalInput<String>(quota),
        quotaCounterScope =
            pulumi.Input.asOptionalInput<String>(quotaCounterScope),
        quotaInterval = pulumi.Input.asOptionalInput<String>(quotaInterval),
        quotaTimeUnit = pulumi.Input.asOptionalInput<String>(quotaTimeUnit),
        scopes = pulumi.Input.asOptionalInput<List<String>>(scopes),
        space = pulumi.Input.asOptionalInput<String>(space);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiResourcesValue = apiResources;
    if (apiResourcesValue != null) {
      map['apiResources'] = apiResourcesValue;
    }
    final approvalTypeValue = approvalType;
    if (approvalTypeValue != null) {
      map['approvalType'] = approvalTypeValue;
    }
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = pulumi.Input.mapOptionalInputValue<
              List<ApiProductAttribute>, List<Map<String, dynamic>>>(
          attributesValue,
          (value) => pulumi.Input.encodeList<ApiProductAttribute,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final environmentsValue = environments;
    if (environmentsValue != null) {
      map['environments'] = environmentsValue;
    }
    final graphqlOperationGroupValue = graphqlOperationGroup;
    if (graphqlOperationGroupValue != null) {
      map['graphqlOperationGroup'] = pulumi.Input.mapOptionalInputValue<
              ApiProductGraphqlOperationGroup, Map<String, dynamic>>(
          graphqlOperationGroupValue, (value) => value.toMap());
    }
    final grpcOperationGroupValue = grpcOperationGroup;
    if (grpcOperationGroupValue != null) {
      map['grpcOperationGroup'] = pulumi.Input.mapOptionalInputValue<
              ApiProductGrpcOperationGroup, Map<String, dynamic>>(
          grpcOperationGroupValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final operationGroupValue = operationGroup;
    if (operationGroupValue != null) {
      map['operationGroup'] = pulumi.Input.mapOptionalInputValue<
          ApiProductOperationGroup,
          Map<String, dynamic>>(operationGroupValue, (value) => value.toMap());
    }
    map['orgId'] = orgId;
    final proxiesValue = proxies;
    if (proxiesValue != null) {
      map['proxies'] = proxiesValue;
    }
    final quotaValue = quota;
    if (quotaValue != null) {
      map['quota'] = quotaValue;
    }
    final quotaCounterScopeValue = quotaCounterScope;
    if (quotaCounterScopeValue != null) {
      map['quotaCounterScope'] = quotaCounterScopeValue;
    }
    final quotaIntervalValue = quotaInterval;
    if (quotaIntervalValue != null) {
      map['quotaInterval'] = quotaIntervalValue;
    }
    final quotaTimeUnitValue = quotaTimeUnit;
    if (quotaTimeUnitValue != null) {
      map['quotaTimeUnit'] = quotaTimeUnitValue;
    }
    final scopesValue = scopes;
    if (scopesValue != null) {
      map['scopes'] = scopesValue;
    }
    final spaceValue = space;
    if (spaceValue != null) {
      map['space'] = spaceValue;
    }
    return map;
  }

  factory ApiProductArgs.fromMap(Map<String, dynamic> map) {
    return ApiProductArgs(
      apiResources: map['apiResources'] == null
          ? null
          : (map['apiResources'] as List).cast<String>(),
      approvalType:
          map['approvalType'] == null ? null : map['approvalType'] as String,
      attributes: map['attributes'] == null
          ? null
          : pulumi.Input.decodeList<ApiProductAttribute>(
              map['attributes'],
              (value) => ApiProductAttribute.fromMap(
                  (value as Map).cast<String, dynamic>())),
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      environments: map['environments'] == null
          ? null
          : (map['environments'] as List).cast<String>(),
      graphqlOperationGroup: map['graphqlOperationGroup'] == null
          ? null
          : ApiProductGraphqlOperationGroup.fromMap(
              (map['graphqlOperationGroup'] as Map).cast<String, dynamic>()),
      grpcOperationGroup: map['grpcOperationGroup'] == null
          ? null
          : ApiProductGrpcOperationGroup.fromMap(
              (map['grpcOperationGroup'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      operationGroup: map['operationGroup'] == null
          ? null
          : ApiProductOperationGroup.fromMap(
              (map['operationGroup'] as Map).cast<String, dynamic>()),
      orgId: map['orgId'] as String,
      proxies: map['proxies'] == null
          ? null
          : (map['proxies'] as List).cast<String>(),
      quota: map['quota'] == null ? null : map['quota'] as String,
      quotaCounterScope: map['quotaCounterScope'] == null
          ? null
          : map['quotaCounterScope'] as String,
      quotaInterval:
          map['quotaInterval'] == null ? null : map['quotaInterval'] as String,
      quotaTimeUnit:
          map['quotaTimeUnit'] == null ? null : map['quotaTimeUnit'] as String,
      scopes:
          map['scopes'] == null ? null : (map['scopes'] as List).cast<String>(),
      space: map['space'] == null ? null : map['space'] as String,
    );
  }
}
