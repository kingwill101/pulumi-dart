// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_product_quota_counter_scope.dart';
import 'google_cloud_apigee_v1_attribute.dart';
import 'google_cloud_apigee_v1_graph_qloperation_group.dart';
import 'google_cloud_apigee_v1_grpc_operation_group.dart';
import 'google_cloud_apigee_v1_operation_group.dart';

/// The set of arguments for ApiProduct.
class ApiProductArgs {
  /// Comma-separated list of API resources to be bundled in the API product. By default, the resource paths are mapped from the `proxy.pathsuffix` variable. The proxy path suffix is defined as the URI fragment following the ProxyEndpoint base path. For example, if the `apiResources` element is defined to be `/forecastrss` and the base path defined for the API proxy is `/weather`, then only requests to `/weather/forecastrss` are permitted by the API product. You can select a specific path, or you can select all subpaths with the following wildcard: - `/**`: Indicates that all sub-URIs are included. - `/*` : Indicates that only URIs one level down are included. By default, / supports the same resources as /** as well as the base path defined by the API proxy. For example, if the base path of the API proxy is `/v1/weatherapikey`, then the API product supports requests to `/v1/weatherapikey` and to any sub-URIs, such as `/v1/weatherapikey/forecastrss`, `/v1/weatherapikey/region/CA`, and so on. For more information, see Managing API products.
  final pulumi.Input<List<String>>? apiResources;

  /// Flag that specifies how API keys are approved to access the APIs defined by the API product. If set to `manual`, the consumer key is generated and returned in "pending" state. In this case, the API keys won't work until they have been explicitly approved. If set to `auto`, the consumer key is generated and returned in "approved" state and can be used immediately. **Note:** Typically, `auto` is used to provide access to free or trial API products that provide limited quota or capabilities.
  final pulumi.Input<String>? approvalType;

  /// Array of attributes that may be used to extend the default API product profile with customer-specific metadata. You can specify a maximum of 18 attributes. Use this property to specify the access level of the API product as either `public`, `private`, or `internal`. Only products marked `public` are available to developers in the Apigee developer portal. For example, you can set a product to `internal` while it is in development and then change access to `public` when it is ready to release on the portal. API products marked as `private` do not appear on the portal, but can be accessed by external developers.
  final pulumi.Input<List<GoogleCloudApigeeV1Attribute>>? attributes;

  /// Response only. Creation time of this environment as milliseconds since epoch.
  final pulumi.Input<String>? createdAt;

  /// Description of the API product. Include key information about the API product that is not captured by other fields.
  final pulumi.Input<String>? description;

  /// Name displayed in the UI or developer portal to developers registering for API access.
  final pulumi.Input<String>? displayName;

  /// Comma-separated list of environment names to which the API product is bound. Requests to environments that are not listed are rejected. By specifying one or more environments, you can bind the resources listed in the API product to a specific environment, preventing developers from accessing those resources through API proxies deployed in another environment. This setting is used, for example, to prevent resources associated with API proxies in `prod` from being accessed by API proxies deployed in `test`.
  final pulumi.Input<List<String>>? environments;

  /// Configuration used to group Apigee proxies or remote services with graphQL operation name, graphQL operation type and quotas. This grouping allows us to precisely set quota for a particular combination of graphQL name and operation type for a particular proxy request. If graphQL name is not set, this would imply quota will be applied on all graphQL requests matching the operation type.
  final pulumi.Input<GoogleCloudApigeeV1GraphQLOperationGroup>?
      graphqlOperationGroup;

  /// Optional. Configuration used to group Apigee proxies with gRPC services and method names. This grouping allows us to set quota for a particular proxy with the gRPC service name and method. If a method name is not set, this implies quota and authorization are applied to all gRPC methods implemented by that proxy for that particular gRPC service.
  final pulumi.Input<GoogleCloudApigeeV1GrpcOperationGroup>? grpcOperationGroup;

  /// Response only. Modified time of this environment as milliseconds since epoch.
  final pulumi.Input<String>? lastModifiedAt;

  /// Internal name of the API product. Characters you can use in the name are restricted to: `A-Z0-9._\-$ %`. **Note:** The internal name cannot be edited when updating the API product.
  final pulumi.Input<String>? name;

  /// Configuration used to group Apigee proxies or remote services with resources, method types, and quotas. The resource refers to the resource URI (excluding the base path). With this grouping, the API product creator is able to fine-tune and give precise control over which REST methods have access to specific resources and how many calls can be made (using the `quota` setting). **Note:** The `api_resources` setting cannot be specified for both the API product and operation group; otherwise the call will fail.
  final pulumi.Input<GoogleCloudApigeeV1OperationGroup>? operationGroup;
  final pulumi.Input<String> organizationId;

  /// Comma-separated list of API proxy names to which this API product is bound. By specifying API proxies, you can associate resources in the API product with specific API proxies, preventing developers from accessing those resources through other API proxies. Apigee rejects requests to API proxies that are not listed. **Note:** The API proxy names must already exist in the specified environment as they will be validated upon creation.
  final pulumi.Input<List<String>>? proxies;

  /// Number of request messages permitted per app by this API product for the specified `quotaInterval` and `quotaTimeUnit`. For example, a `quota` of 50, for a `quotaInterval` of 12 and a `quotaTimeUnit` of hours means 50 requests are allowed every 12 hours.
  final pulumi.Input<String>? quota;

  /// Scope of the quota decides how the quota counter gets applied and evaluate for quota violation. If the Scope is set as PROXY, then all the operations defined for the APIproduct that are associated with the same proxy will share the same quota counter set at the APIproduct level, making it a global counter at a proxy level. If the Scope is set as OPERATION, then each operations get the counter set at the API product dedicated, making it a local counter. Note that, the QuotaCounterScope applies only when an operation does not have dedicated quota set for itself.
  final pulumi.Input<ApiProductQuotaCounterScope>? quotaCounterScope;

  /// Time interval over which the number of request messages is calculated.
  final pulumi.Input<String>? quotaInterval;

  /// Time unit defined for the `quotaInterval`. Valid values include `minute`, `hour`, `day`, or `month`.
  final pulumi.Input<String>? quotaTimeUnit;

  /// Comma-separated list of OAuth scopes that are validated at runtime. Apigee validates that the scopes in any access token presented match the scopes defined in the OAuth policy associated with the API product.
  final pulumi.Input<List<String>>? scopes;

  ApiProductArgs({
    this.apiResources,
    this.approvalType,
    this.attributes,
    this.createdAt,
    this.description,
    this.displayName,
    this.environments,
    this.graphqlOperationGroup,
    this.grpcOperationGroup,
    this.lastModifiedAt,
    this.name,
    this.operationGroup,
    required this.organizationId,
    this.proxies,
    this.quota,
    this.quotaCounterScope,
    this.quotaInterval,
    this.quotaTimeUnit,
    this.scopes,
  });

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
              List<GoogleCloudApigeeV1Attribute>, List<Map<String, dynamic>>>(
          attributesValue,
          (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1Attribute,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final createdAtValue = createdAt;
    if (createdAtValue != null) {
      map['createdAt'] = createdAtValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final environmentsValue = environments;
    if (environmentsValue != null) {
      map['environments'] = environmentsValue;
    }
    final graphqlOperationGroupValue = graphqlOperationGroup;
    if (graphqlOperationGroupValue != null) {
      map['graphqlOperationGroup'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudApigeeV1GraphQLOperationGroup, Map<String, dynamic>>(
          graphqlOperationGroupValue, (value) => value.toMap());
    }
    final grpcOperationGroupValue = grpcOperationGroup;
    if (grpcOperationGroupValue != null) {
      map['grpcOperationGroup'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudApigeeV1GrpcOperationGroup, Map<String, dynamic>>(
          grpcOperationGroupValue, (value) => value.toMap());
    }
    final lastModifiedAtValue = lastModifiedAt;
    if (lastModifiedAtValue != null) {
      map['lastModifiedAt'] = lastModifiedAtValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final operationGroupValue = operationGroup;
    if (operationGroupValue != null) {
      map['operationGroup'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudApigeeV1OperationGroup,
          Map<String, dynamic>>(operationGroupValue, (value) => value.toMap());
    }
    map['organizationId'] = organizationId;
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
      map['quotaCounterScope'] = pulumi.Input.mapOptionalInputValue<
          ApiProductQuotaCounterScope,
          String>(quotaCounterScopeValue, (value) => value.value);
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
    return map;
  }

  factory ApiProductArgs.fromMap(Map<String, dynamic> map) {
    return ApiProductArgs(
      apiResources:
          pulumi.Input.asOptionalInput<List<String>>(map['apiResources']),
      approvalType: pulumi.Input.asOptionalInput<String>(map['approvalType']),
      attributes:
          pulumi.Input.asOptionalInput<List<GoogleCloudApigeeV1Attribute>>(
              map['attributes']),
      createdAt: pulumi.Input.asOptionalInput<String>(map['createdAt']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      environments:
          pulumi.Input.asOptionalInput<List<String>>(map['environments']),
      graphqlOperationGroup: pulumi.Input.asOptionalInput<
              GoogleCloudApigeeV1GraphQLOperationGroup>(
          map['graphqlOperationGroup']),
      grpcOperationGroup:
          pulumi.Input.asOptionalInput<GoogleCloudApigeeV1GrpcOperationGroup>(
              map['grpcOperationGroup']),
      lastModifiedAt:
          pulumi.Input.asOptionalInput<String>(map['lastModifiedAt']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      operationGroup:
          pulumi.Input.asOptionalInput<GoogleCloudApigeeV1OperationGroup>(
              map['operationGroup']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      proxies: pulumi.Input.asOptionalInput<List<String>>(map['proxies']),
      quota: pulumi.Input.asOptionalInput<String>(map['quota']),
      quotaCounterScope:
          pulumi.Input.asOptionalInput<ApiProductQuotaCounterScope>(
              map['quotaCounterScope']),
      quotaInterval: pulumi.Input.asOptionalInput<String>(map['quotaInterval']),
      quotaTimeUnit: pulumi.Input.asOptionalInput<String>(map['quotaTimeUnit']),
      scopes: pulumi.Input.asOptionalInput<List<String>>(map['scopes']),
    );
  }
}
