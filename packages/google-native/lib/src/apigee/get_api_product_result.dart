// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute_response.dart';
import 'google_cloud_apigee_v1_graph_qloperation_group_response.dart';
import 'google_cloud_apigee_v1_grpc_operation_group_response.dart';
import 'google_cloud_apigee_v1_operation_group_response.dart';

/// Result data returned by getApiProduct.
class GetApiProductResult {
  /// Comma-separated list of API resources to be bundled in the API product. By default, the resource paths are mapped from the `proxy.pathsuffix` variable. The proxy path suffix is defined as the URI fragment following the ProxyEndpoint base path. For example, if the `apiResources` element is defined to be `/forecastrss` and the base path defined for the API proxy is `/weather`, then only requests to `/weather/forecastrss` are permitted by the API product. You can select a specific path, or you can select all subpaths with the following wildcard: - `/**`: Indicates that all sub-URIs are included. - `/*` : Indicates that only URIs one level down are included. By default, / supports the same resources as /** as well as the base path defined by the API proxy. For example, if the base path of the API proxy is `/v1/weatherapikey`, then the API product supports requests to `/v1/weatherapikey` and to any sub-URIs, such as `/v1/weatherapikey/forecastrss`, `/v1/weatherapikey/region/CA`, and so on. For more information, see Managing API products.
  final List<String> apiResources;

  /// Flag that specifies how API keys are approved to access the APIs defined by the API product. If set to `manual`, the consumer key is generated and returned in "pending" state. In this case, the API keys won't work until they have been explicitly approved. If set to `auto`, the consumer key is generated and returned in "approved" state and can be used immediately. **Note:** Typically, `auto` is used to provide access to free or trial API products that provide limited quota or capabilities.
  final String approvalType;

  /// Array of attributes that may be used to extend the default API product profile with customer-specific metadata. You can specify a maximum of 18 attributes. Use this property to specify the access level of the API product as either `public`, `private`, or `internal`. Only products marked `public` are available to developers in the Apigee developer portal. For example, you can set a product to `internal` while it is in development and then change access to `public` when it is ready to release on the portal. API products marked as `private` do not appear on the portal, but can be accessed by external developers.
  final List<GoogleCloudApigeeV1AttributeResponse> attributes;

  /// Response only. Creation time of this environment as milliseconds since epoch.
  final String createdAt;

  /// Description of the API product. Include key information about the API product that is not captured by other fields.
  final String description;

  /// Name displayed in the UI or developer portal to developers registering for API access.
  final String displayName;

  /// Comma-separated list of environment names to which the API product is bound. Requests to environments that are not listed are rejected. By specifying one or more environments, you can bind the resources listed in the API product to a specific environment, preventing developers from accessing those resources through API proxies deployed in another environment. This setting is used, for example, to prevent resources associated with API proxies in `prod` from being accessed by API proxies deployed in `test`.
  final List<String> environments;

  /// Configuration used to group Apigee proxies or remote services with graphQL operation name, graphQL operation type and quotas. This grouping allows us to precisely set quota for a particular combination of graphQL name and operation type for a particular proxy request. If graphQL name is not set, this would imply quota will be applied on all graphQL requests matching the operation type.
  final GoogleCloudApigeeV1GraphQLOperationGroupResponse graphqlOperationGroup;

  /// Optional. Configuration used to group Apigee proxies with gRPC services and method names. This grouping allows us to set quota for a particular proxy with the gRPC service name and method. If a method name is not set, this implies quota and authorization are applied to all gRPC methods implemented by that proxy for that particular gRPC service.
  final GoogleCloudApigeeV1GrpcOperationGroupResponse grpcOperationGroup;

  /// Response only. Modified time of this environment as milliseconds since epoch.
  final String lastModifiedAt;

  /// Internal name of the API product. Characters you can use in the name are restricted to: `A-Z0-9._\-$ %`. **Note:** The internal name cannot be edited when updating the API product.
  final String name;

  /// Configuration used to group Apigee proxies or remote services with resources, method types, and quotas. The resource refers to the resource URI (excluding the base path). With this grouping, the API product creator is able to fine-tune and give precise control over which REST methods have access to specific resources and how many calls can be made (using the `quota` setting). **Note:** The `api_resources` setting cannot be specified for both the API product and operation group; otherwise the call will fail.
  final GoogleCloudApigeeV1OperationGroupResponse operationGroup;

  /// Comma-separated list of API proxy names to which this API product is bound. By specifying API proxies, you can associate resources in the API product with specific API proxies, preventing developers from accessing those resources through other API proxies. Apigee rejects requests to API proxies that are not listed. **Note:** The API proxy names must already exist in the specified environment as they will be validated upon creation.
  final List<String> proxies;

  /// Number of request messages permitted per app by this API product for the specified `quotaInterval` and `quotaTimeUnit`. For example, a `quota` of 50, for a `quotaInterval` of 12 and a `quotaTimeUnit` of hours means 50 requests are allowed every 12 hours.
  final String quota;

  /// Scope of the quota decides how the quota counter gets applied and evaluate for quota violation. If the Scope is set as PROXY, then all the operations defined for the APIproduct that are associated with the same proxy will share the same quota counter set at the APIproduct level, making it a global counter at a proxy level. If the Scope is set as OPERATION, then each operations get the counter set at the API product dedicated, making it a local counter. Note that, the QuotaCounterScope applies only when an operation does not have dedicated quota set for itself.
  final String quotaCounterScope;

  /// Time interval over which the number of request messages is calculated.
  final String quotaInterval;

  /// Time unit defined for the `quotaInterval`. Valid values include `minute`, `hour`, `day`, or `month`.
  final String quotaTimeUnit;

  /// Comma-separated list of OAuth scopes that are validated at runtime. Apigee validates that the scopes in any access token presented match the scopes defined in the OAuth policy associated with the API product.
  final List<String> scopes;

  /// Creates a new [GetApiProductResult].
  /// [apiResources] Comma-separated list of API resources to be bundled in the API product. By default, the resource paths are mapped from the `proxy.pathsuffix` variable. The proxy path suffix is defined as the URI fragment following the ProxyEndpoint base path. For example, if the `apiResources` element is defined to be `/forecastrss` and the base path defined for the API proxy is `/weather`, then only requests to `/weather/forecastrss` are permitted by the API product. You can select a specific path, or you can select all subpaths with the following wildcard: - `/**`: Indicates that all sub-URIs are included. - `/*` : Indicates that only URIs one level down are included. By default, / supports the same resources as /** as well as the base path defined by the API proxy. For example, if the base path of the API proxy is `/v1/weatherapikey`, then the API product supports requests to `/v1/weatherapikey` and to any sub-URIs, such as `/v1/weatherapikey/forecastrss`, `/v1/weatherapikey/region/CA`, and so on. For more information, see Managing API products.
  /// [approvalType] Flag that specifies how API keys are approved to access the APIs defined by the API product. If set to `manual`, the consumer key is generated and returned in "pending" state. In this case, the API keys won't work until they have been explicitly approved. If set to `auto`, the consumer key is generated and returned in "approved" state and can be used immediately. **Note:** Typically, `auto` is used to provide access to free or trial API products that provide limited quota or capabilities.
  /// [attributes] Array of attributes that may be used to extend the default API product profile with customer-specific metadata. You can specify a maximum of 18 attributes. Use this property to specify the access level of the API product as either `public`, `private`, or `internal`. Only products marked `public` are available to developers in the Apigee developer portal. For example, you can set a product to `internal` while it is in development and then change access to `public` when it is ready to release on the portal. API products marked as `private` do not appear on the portal, but can be accessed by external developers.
  /// [createdAt] Response only. Creation time of this environment as milliseconds since epoch.
  /// [description] Description of the API product. Include key information about the API product that is not captured by other fields.
  /// [displayName] Name displayed in the UI or developer portal to developers registering for API access.
  /// [environments] Comma-separated list of environment names to which the API product is bound. Requests to environments that are not listed are rejected. By specifying one or more environments, you can bind the resources listed in the API product to a specific environment, preventing developers from accessing those resources through API proxies deployed in another environment. This setting is used, for example, to prevent resources associated with API proxies in `prod` from being accessed by API proxies deployed in `test`.
  /// [graphqlOperationGroup] Configuration used to group Apigee proxies or remote services with graphQL operation name, graphQL operation type and quotas. This grouping allows us to precisely set quota for a particular combination of graphQL name and operation type for a particular proxy request. If graphQL name is not set, this would imply quota will be applied on all graphQL requests matching the operation type.
  /// [grpcOperationGroup] Optional. Configuration used to group Apigee proxies with gRPC services and method names. This grouping allows us to set quota for a particular proxy with the gRPC service name and method. If a method name is not set, this implies quota and authorization are applied to all gRPC methods implemented by that proxy for that particular gRPC service.
  /// [lastModifiedAt] Response only. Modified time of this environment as milliseconds since epoch.
  /// [name] Internal name of the API product. Characters you can use in the name are restricted to: `A-Z0-9._\-$ %`. **Note:** The internal name cannot be edited when updating the API product.
  /// [operationGroup] Configuration used to group Apigee proxies or remote services with resources, method types, and quotas. The resource refers to the resource URI (excluding the base path). With this grouping, the API product creator is able to fine-tune and give precise control over which REST methods have access to specific resources and how many calls can be made (using the `quota` setting). **Note:** The `api_resources` setting cannot be specified for both the API product and operation group; otherwise the call will fail.
  /// [proxies] Comma-separated list of API proxy names to which this API product is bound. By specifying API proxies, you can associate resources in the API product with specific API proxies, preventing developers from accessing those resources through other API proxies. Apigee rejects requests to API proxies that are not listed. **Note:** The API proxy names must already exist in the specified environment as they will be validated upon creation.
  /// [quota] Number of request messages permitted per app by this API product for the specified `quotaInterval` and `quotaTimeUnit`. For example, a `quota` of 50, for a `quotaInterval` of 12 and a `quotaTimeUnit` of hours means 50 requests are allowed every 12 hours.
  /// [quotaCounterScope] Scope of the quota decides how the quota counter gets applied and evaluate for quota violation. If the Scope is set as PROXY, then all the operations defined for the APIproduct that are associated with the same proxy will share the same quota counter set at the APIproduct level, making it a global counter at a proxy level. If the Scope is set as OPERATION, then each operations get the counter set at the API product dedicated, making it a local counter. Note that, the QuotaCounterScope applies only when an operation does not have dedicated quota set for itself.
  /// [quotaInterval] Time interval over which the number of request messages is calculated.
  /// [quotaTimeUnit] Time unit defined for the `quotaInterval`. Valid values include `minute`, `hour`, `day`, or `month`.
  /// [scopes] Comma-separated list of OAuth scopes that are validated at runtime. Apigee validates that the scopes in any access token presented match the scopes defined in the OAuth policy associated with the API product.
  GetApiProductResult({
    required this.apiResources,
    required this.approvalType,
    required this.attributes,
    required this.createdAt,
    required this.description,
    required this.displayName,
    required this.environments,
    required this.graphqlOperationGroup,
    required this.grpcOperationGroup,
    required this.lastModifiedAt,
    required this.name,
    required this.operationGroup,
    required this.proxies,
    required this.quota,
    required this.quotaCounterScope,
    required this.quotaInterval,
    required this.quotaTimeUnit,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiResources'] = apiResources;
    map['approvalType'] = approvalType;
    map['attributes'] = pulumi.Input.encodeList<
        GoogleCloudApigeeV1AttributeResponse,
        Map<String, dynamic>>(attributes, (value) => value.toMap());
    map['createdAt'] = createdAt;
    map['description'] = description;
    map['displayName'] = displayName;
    map['environments'] = environments;
    map['graphqlOperationGroup'] = graphqlOperationGroup.toMap();
    map['grpcOperationGroup'] = grpcOperationGroup.toMap();
    map['lastModifiedAt'] = lastModifiedAt;
    map['name'] = name;
    map['operationGroup'] = operationGroup.toMap();
    map['proxies'] = proxies;
    map['quota'] = quota;
    map['quotaCounterScope'] = quotaCounterScope;
    map['quotaInterval'] = quotaInterval;
    map['quotaTimeUnit'] = quotaTimeUnit;
    map['scopes'] = scopes;
    return map;
  }

  factory GetApiProductResult.fromMap(Map<String, dynamic> map) {
    return GetApiProductResult(
      apiResources: (map['apiResources'] as List).cast<String>(),
      approvalType: map['approvalType'] as String,
      attributes: pulumi.Input.decodeList<GoogleCloudApigeeV1AttributeResponse>(
          map['attributes'],
          (value) => GoogleCloudApigeeV1AttributeResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      createdAt: map['createdAt'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      environments: (map['environments'] as List).cast<String>(),
      graphqlOperationGroup:
          GoogleCloudApigeeV1GraphQLOperationGroupResponse.fromMap(
              (map['graphqlOperationGroup'] as Map).cast<String, dynamic>()),
      grpcOperationGroup: GoogleCloudApigeeV1GrpcOperationGroupResponse.fromMap(
          (map['grpcOperationGroup'] as Map).cast<String, dynamic>()),
      lastModifiedAt: map['lastModifiedAt'] as String,
      name: map['name'] as String,
      operationGroup: GoogleCloudApigeeV1OperationGroupResponse.fromMap(
          (map['operationGroup'] as Map).cast<String, dynamic>()),
      proxies: (map['proxies'] as List).cast<String>(),
      quota: map['quota'] as String,
      quotaCounterScope: map['quotaCounterScope'] as String,
      quotaInterval: map['quotaInterval'] as String,
      quotaTimeUnit: map['quotaTimeUnit'] as String,
      scopes: (map['scopes'] as List).cast<String>(),
    );
  }
}
