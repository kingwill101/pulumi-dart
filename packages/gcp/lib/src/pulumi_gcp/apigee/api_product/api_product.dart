import 'package:pulumi/pulumi.dart';
import '../api_product_attribute/api_product_attribute.dart';
import '../api_product_graphql_operation_group/api_product_graphql_operation_group.dart';
import '../api_product_grpc_operation_group/api_product_grpc_operation_group.dart';
import '../api_product_operation_group/api_product_operation_group.dart';
import 'api_product_args.dart';

/// An `ApiProduct` in Apigee.
///
///
/// To get more information about ApiProduct, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.apiproducts#ApiProduct)
/// * How-to Guides
/// * [Creating an API product](https://cloud.google.com/apigee/docs/api-platform/publish/what-api-product)
///
/// ## Example Usage
///
/// ### Apigee Api Product Basic
///
///
///
/// ### Apigee Api Product With Legacy Operation
///
///
///
/// ## Import
///
/// ApiProduct can be imported using any of these accepted formats:
///
/// * `{{org_id}}/apiproducts/{{name}}`
///
/// * `{{org_id}}/{{name}}`
///
/// When using the `pulumi import` command, ApiProduct can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/apiProduct:ApiProduct default {{org_id}}/apiproducts/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/apiProduct:ApiProduct default {{org_id}}/{{name}}
/// ```
class ApiProduct extends CustomResource {
  /// Comma-separated list of API resources to be bundled in the API product. By default, the resource paths are mapped from the proxy.pathsuffix variable.
  /// The proxy path suffix is defined as the URI fragment following the ProxyEndpoint base path. For example, if the apiResources element is defined to be /forecastrss and the base path defined for the API proxy is /weather, then only requests to /weather/forecastrss are permitted by the API product.
  late final Output<List<String>?> apiResources;

  /// Flag that specifies how API keys are approved to access the APIs defined by the API product.
  /// Valid values are `auto` or `manual`.
  /// Possible values are: `auto`, `manual`.
  late final Output<String?> approvalType;

  /// Array of attributes that may be used to extend the default API product profile with customer-specific metadata. You can specify a maximum of 18 attributes.
  /// Use this property to specify the access level of the API product as either public, private, or internal.
  /// Structure is documented below.
  late final Output<List<ApiProductAttribute>?> attributes;

  /// Response only. Creation time of this environment as milliseconds since epoch.
  late final Output<String> createdAt;

  /// Description of the API product. Include key information about the API product that is not captured by other fields.
  late final Output<String?> description;

  /// Name displayed in the UI or developer portal to developers registering for API access.
  late final Output<String> displayName;

  /// Comma-separated list of environment names to which the API product is bound. Requests to environments that are not listed are rejected.
  /// By specifying one or more environments, you can bind the resources listed in the API product to a specific environment, preventing developers from accessing those resources through API proxies deployed in another environment.
  late final Output<List<String>?> environments;

  /// Configuration used to group Apigee proxies or remote services with graphQL operation name, graphQL operation type and quotas. This grouping allows us to precisely set quota for a particular combination of graphQL name and operation type for a particular proxy request. If graphQL name is not set, this would imply quota will be applied on all graphQL requests matching the operation type.
  /// Structure is documented below.
  late final Output<ApiProductGraphqlOperationGroup?> graphqlOperationGroup;

  /// Optional. Configuration used to group Apigee proxies with gRPC services and method names. This grouping allows us to set quota for a particular proxy with the gRPC service name and method. If a method name is not set, this implies quota and authorization are applied to all gRPC methods implemented by that proxy for that particular gRPC service.
  /// Structure is documented below.
  late final Output<ApiProductGrpcOperationGroup?> grpcOperationGroup;

  /// Response only. Modified time of this environment as milliseconds since epoch.
  late final Output<String> lastModifiedAt;

  /// Internal name of the API product.
  late final Output<String> name;

  /// Configuration used to group Apigee proxies or remote services with resources, method types, and quotas. The resource refers to the resource URI (excluding the base path). With this grouping, the API product creator is able to fine-tune and give precise control over which REST methods have access to specific resources and how many calls can be made (using the quota setting).
  /// Note: The apiResources setting cannot be specified for both the API product and operation group; otherwise the call will fail.
  /// Structure is documented below.
  late final Output<ApiProductOperationGroup?> operationGroup;

  /// The Apigee Organization associated with the Apigee API product,
  /// in the format `organizations/{{org_name}}`.
  late final Output<String> orgId;

  /// Comma-separated list of API proxy names to which this API product is bound. By specifying API proxies, you can associate resources in the API product with specific API proxies, preventing developers from accessing those resources through other API proxies.
  /// Apigee rejects requests to API proxies that are not listed.
  late final Output<List<String>?> proxies;

  /// Number of request messages permitted per app by this API product for the specified quotaInterval and quotaTimeUnit.
  /// For example, a quota of 50, for a quotaInterval of 12 and a quotaTimeUnit of hours means 50 requests are allowed every 12 hours.
  late final Output<String?> quota;

  /// Scope of the quota decides how the quota counter gets applied and evaluate for quota violation. If the Scope is set as PROXY, then all the operations defined for the APIproduct that are associated with the same proxy will share the same quota counter set at the APIproduct level, making it a global counter at a proxy level. If the Scope is set as OPERATION, then each operations get the counter set at the API product dedicated, making it a local counter. Note that, the QuotaCounterScope applies only when an operation does not have dedicated quota set for itself.
  /// Possible values are: `QUOTA_COUNTER_SCOPE_UNSPECIFIED`, `PROXY`, `OPERATION`.
  late final Output<String?> quotaCounterScope;

  /// Time interval over which the number of request messages is calculated.
  late final Output<String?> quotaInterval;

  /// Time unit defined for the quotaInterval. Valid values include second, minute, hour, day, month or year.
  late final Output<String?> quotaTimeUnit;

  /// Comma-separated list of OAuth scopes that are validated at runtime. Apigee validates that the scopes in any access token presented match the scopes defined in the OAuth policy associated with the API product.
  late final Output<List<String>?> scopes;

  /// Optional. The resource ID of the parent Space. If not set, the parent resource will be the Organization.
  late final Output<String?> space;

  ApiProduct(
    String name, {
    ApiProductArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/apiProduct:ApiProduct',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiResources = registerOutput<List<String>?>('apiResources');
    this.approvalType = registerOutput<String?>('approvalType');
    this.attributes = registerOutput<List<ApiProductAttribute>?>('attributes');
    this.createdAt = registerOutput<String>('createdAt');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.environments = registerOutput<List<String>?>('environments');
    this.graphqlOperationGroup =
        registerOutput<ApiProductGraphqlOperationGroup?>(
            'graphqlOperationGroup');
    this.grpcOperationGroup =
        registerOutput<ApiProductGrpcOperationGroup?>('grpcOperationGroup');
    this.lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    this.operationGroup =
        registerOutput<ApiProductOperationGroup?>('operationGroup');
    this.orgId = registerOutput<String>('orgId');
    this.proxies = registerOutput<List<String>?>('proxies');
    this.quota = registerOutput<String?>('quota');
    this.quotaCounterScope = registerOutput<String?>('quotaCounterScope');
    this.quotaInterval = registerOutput<String?>('quotaInterval');
    this.quotaTimeUnit = registerOutput<String?>('quotaTimeUnit');
    this.scopes = registerOutput<List<String>?>('scopes');
    this.space = registerOutput<String?>('space');
  }
}
