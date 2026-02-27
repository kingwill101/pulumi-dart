import 'package:pulumi/pulumi.dart';
import '../graph_qlapi_additional_authentication_provider/graph_qlapi_additional_authentication_provider.dart';
import '../graph_qlapi_enhanced_metrics_config/graph_qlapi_enhanced_metrics_config.dart';
import '../graph_qlapi_lambda_authorizer_config/graph_qlapi_lambda_authorizer_config.dart';
import '../graph_qlapi_log_config/graph_qlapi_log_config.dart';
import '../graph_qlapi_openid_connect_config/graph_qlapi_openid_connect_config.dart';
import '../graph_qlapi_user_pool_config/graph_qlapi_user_pool_config.dart';
import 'graph_qlapi_args.dart';

/// Provides an AppSync GraphQL API.
///
/// ## Example Usage
///
/// ### API Key Authentication
///
///
///
/// ### AWS IAM Authentication
///
///
///
/// ### AWS Cognito User Pool Authentication
///
///
///
/// ### OpenID Connect Authentication
///
///
///
/// ### AWS Lambda Authorizer Authentication
///
///
///
/// ### With Multiple Authentication Providers
///
///
///
/// ### With Schema
///
///
///
/// ### Enabling Logging
///
///
///
/// ### Associate Web ACL (v2)
///
///
///
/// ### GraphQL run complexity, query depth, and introspection
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AppSync GraphQL API using the GraphQL API ID. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/graphQLApi:GraphQLApi example 0123456789
/// ```
class GraphQLApi extends CustomResource {
  /// One or more additional authentication providers for the GraphQL API. See `additional_authentication_provider` Block for details.
  late final Output<List<GraphQLApiAdditionalAuthenticationProvider>?>
      additionalAuthenticationProviders;

  /// API type. Valid values are `GRAPHQL` or `MERGED`. A `MERGED` type requires `merged_api_execution_role_arn` to be set.
  late final Output<String?> apiType;

  /// ARN
  late final Output<String> arn;

  /// Authentication type. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`
  late final Output<String> authenticationType;

  /// Enables and controls the enhanced metrics feature. See `enhanced_metrics_config` Block for details.
  late final Output<GraphQLApiEnhancedMetricsConfig?> enhancedMetricsConfig;

  /// Sets the value of the GraphQL API to enable (`ENABLED`) or disable (`DISABLED`) introspection. If no value is provided, the introspection configuration will be set to ENABLED by default. This field will produce an error if the operation attempts to use the introspection feature while this field is disabled. For more information about introspection, see [GraphQL introspection](https://graphql.org/learn/introspection/).
  late final Output<String?> introspectionConfig;

  /// Nested argument containing Lambda authorizer configuration. See `lambda_authorizer_config` Block for details.
  late final Output<GraphQLApiLambdaAuthorizerConfig?> lambdaAuthorizerConfig;

  /// Nested argument containing logging configuration. See `log_config` Block for details.
  late final Output<GraphQLApiLogConfig?> logConfig;

  /// ARN of the execution role when `api_type` is set to `MERGED`.
  late final Output<String?> mergedApiExecutionRoleArn;

  /// User-supplied name for the GraphQL API.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Nested argument containing OpenID Connect configuration. See `openid_connect_config` Block for details.
  late final Output<GraphQLApiOpenidConnectConfig?> openidConnectConfig;

  /// The maximum depth a query can have in a single request. Depth refers to the amount of nested levels allowed in the body of query. The default value is `0` (or unspecified), which indicates there's no depth limit. If you set a limit, it can be between `1` and `75` nested levels. This field will produce a limit error if the operation falls out of bounds.
  ///
  /// Note that fields can still be set to nullable or non-nullable. If a non-nullable field produces an error, the error will be thrown upwards to the first nullable field available.
  late final Output<int?> queryDepthLimit;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The maximum number of resolvers that can be invoked in a single request. The default value is `0` (or unspecified), which will set the limit to `10000`. When specified, the limit value can be between `1` and `10000`. This field will produce a limit error if the operation falls out of bounds.
  late final Output<int?> resolverCountLimit;

  /// Schema definition, in GraphQL schema language format. This provider cannot perform drift detection of this configuration.
  late final Output<String?> schema;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Map of URIs associated with the API E.g., `uris["GRAPHQL"] = https://ID.appsync-api.REGION.amazonaws.com/graphql`
  late final Output<Map<String, String>> uris;

  /// Amazon Cognito User Pool configuration. See `user_pool_config` Block for details.
  late final Output<GraphQLApiUserPoolConfig?> userPoolConfig;

  /// Sets the value of the GraphQL API to public (`GLOBAL`) or private (`PRIVATE`). If no value is provided, the visibility will be set to `GLOBAL` by default. This value cannot be changed once the API has been created.
  late final Output<String?> visibility;

  /// Whether tracing with X-ray is enabled. Defaults to false.
  late final Output<bool?> xrayEnabled;

  GraphQLApi(
    String name, {
    GraphQLApiArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appsync/graphQLApi:GraphQLApi',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.additionalAuthenticationProviders =
        registerOutput<List<GraphQLApiAdditionalAuthenticationProvider>?>(
            'additionalAuthenticationProviders');
    this.apiType = registerOutput<String?>('apiType');
    this.arn = registerOutput<String>('arn');
    this.authenticationType = registerOutput<String>('authenticationType');
    this.enhancedMetricsConfig =
        registerOutput<GraphQLApiEnhancedMetricsConfig?>(
            'enhancedMetricsConfig');
    this.introspectionConfig = registerOutput<String?>('introspectionConfig');
    this.lambdaAuthorizerConfig =
        registerOutput<GraphQLApiLambdaAuthorizerConfig?>(
            'lambdaAuthorizerConfig');
    this.logConfig = registerOutput<GraphQLApiLogConfig?>('logConfig');
    this.mergedApiExecutionRoleArn =
        registerOutput<String?>('mergedApiExecutionRoleArn');
    this.name = registerOutput<String>('name');
    this.openidConnectConfig =
        registerOutput<GraphQLApiOpenidConnectConfig?>('openidConnectConfig');
    this.queryDepthLimit = registerOutput<int?>('queryDepthLimit');
    this.region = registerOutput<String>('region');
    this.resolverCountLimit = registerOutput<int?>('resolverCountLimit');
    this.schema = registerOutput<String?>('schema');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uris = registerOutput<Map<String, String>>('uris');
    this.userPoolConfig =
        registerOutput<GraphQLApiUserPoolConfig?>('userPoolConfig');
    this.visibility = registerOutput<String?>('visibility');
    this.xrayEnabled = registerOutput<bool?>('xrayEnabled');
  }
}
