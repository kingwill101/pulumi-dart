// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'graph_qlapi_additional_authentication_provider.dart';
import 'graph_qlapi_enhanced_metrics_config.dart';
import 'graph_qlapi_lambda_authorizer_config.dart';
import 'graph_qlapi_log_config.dart';
import 'graph_qlapi_openid_connect_config.dart';
import 'graph_qlapi_user_pool_config.dart';

/// {@template pulumi_appsync_graph_qlapi_graph_qlapi_args_doc}
/// The set of arguments for GraphQLApi.
/// {@endtemplate}
/// {@macro pulumi_appsync_graph_qlapi_graph_qlapi_args_doc}
class GraphQLApiArgs {
  /// One or more additional authentication providers for the GraphQL API. See `additional_authentication_provider` Block for details.
  final pulumi.Input<List<GraphQLApiAdditionalAuthenticationProvider>>?
  additionalAuthenticationProviders;

  /// API type. Valid values are `GRAPHQL` or `MERGED`. A `MERGED` type requires `merged_api_execution_role_arn` to be set.
  final pulumi.Input<String>? apiType;

  /// Authentication type. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`
  final pulumi.Input<String> authenticationType;

  /// Enables and controls the enhanced metrics feature. See `enhanced_metrics_config` Block for details.
  final pulumi.Input<GraphQLApiEnhancedMetricsConfig>? enhancedMetricsConfig;

  /// Sets the value of the GraphQL API to enable (`ENABLED`) or disable (`DISABLED`) introspection. If no value is provided, the introspection configuration will be set to ENABLED by default. This field will produce an error if the operation attempts to use the introspection feature while this field is disabled. For more information about introspection, see [GraphQL introspection](https://graphql.org/learn/introspection/).
  final pulumi.Input<String>? introspectionConfig;

  /// Nested argument containing Lambda authorizer configuration. See `lambda_authorizer_config` Block for details.
  final pulumi.Input<GraphQLApiLambdaAuthorizerConfig>? lambdaAuthorizerConfig;

  /// Nested argument containing logging configuration. See `log_config` Block for details.
  final pulumi.Input<GraphQLApiLogConfig>? logConfig;

  /// ARN of the execution role when `api_type` is set to `MERGED`.
  final pulumi.Input<String>? mergedApiExecutionRoleArn;

  /// User-supplied name for the GraphQL API.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Nested argument containing OpenID Connect configuration. See `openid_connect_config` Block for details.
  final pulumi.Input<GraphQLApiOpenidConnectConfig>? openidConnectConfig;

  /// The maximum depth a query can have in a single request. Depth refers to the amount of nested levels allowed in the body of query. The default value is `0` (or unspecified), which indicates there's no depth limit. If you set a limit, it can be between `1` and `75` nested levels. This field will produce a limit error if the operation falls out of bounds.
  ///
  /// Note that fields can still be set to nullable or non-nullable. If a non-nullable field produces an error, the error will be thrown upwards to the first nullable field available.
  final pulumi.Input<int>? queryDepthLimit;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The maximum number of resolvers that can be invoked in a single request. The default value is `0` (or unspecified), which will set the limit to `10000`. When specified, the limit value can be between `1` and `10000`. This field will produce a limit error if the operation falls out of bounds.
  final pulumi.Input<int>? resolverCountLimit;

  /// Schema definition, in GraphQL schema language format. This provider cannot perform drift detection of this configuration.
  final pulumi.Input<String>? schema;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Amazon Cognito User Pool configuration. See `user_pool_config` Block for details.
  final pulumi.Input<GraphQLApiUserPoolConfig>? userPoolConfig;

  /// Sets the value of the GraphQL API to public (`GLOBAL`) or private (`PRIVATE`). If no value is provided, the visibility will be set to `GLOBAL` by default. This value cannot be changed once the API has been created.
  final pulumi.Input<String>? visibility;

  /// Whether tracing with X-ray is enabled. Defaults to false.
  final pulumi.Input<bool>? xrayEnabled;

  /// Creates a new [GraphQLApiArgs].
  /// [additionalAuthenticationProviders] One or more additional authentication providers for the GraphQL API. See `additional_authentication_provider` Block for details.
  /// [apiType] API type. Valid values are `GRAPHQL` or `MERGED`. A `MERGED` type requires `merged_api_execution_role_arn` to be set.
  /// [authenticationType] Authentication type. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`
  /// [enhancedMetricsConfig] Enables and controls the enhanced metrics feature. See `enhanced_metrics_config` Block for details.
  /// [introspectionConfig] Sets the value of the GraphQL API to enable (`ENABLED`) or disable (`DISABLED`) introspection. If no value is provided, the introspection configuration will be set to ENABLED by default. This field will produce an error if the operation attempts to use the introspection feature while this field is disabled. For more information about introspection, see [GraphQL introspection](https://graphql.org/learn/introspection/).
  /// [lambdaAuthorizerConfig] Nested argument containing Lambda authorizer configuration. See `lambda_authorizer_config` Block for details.
  /// [logConfig] Nested argument containing logging configuration. See `log_config` Block for details.
  /// [mergedApiExecutionRoleArn] ARN of the execution role when `api_type` is set to `MERGED`.
  /// [name] User-supplied name for the GraphQL API.
  /// [openidConnectConfig] Nested argument containing OpenID Connect configuration. See `openid_connect_config` Block for details.
  /// [queryDepthLimit] The maximum depth a query can have in a single request. Depth refers to the amount of nested levels allowed in the body of query. The default value is `0` (or unspecified), which indicates there's no depth limit. If you set a limit, it can be between `1` and `75` nested levels. This field will produce a limit error if the operation falls out of bounds.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resolverCountLimit] The maximum number of resolvers that can be invoked in a single request. The default value is `0` (or unspecified), which will set the limit to `10000`. When specified, the limit value can be between `1` and `10000`. This field will produce a limit error if the operation falls out of bounds.
  /// [schema] Schema definition, in GraphQL schema language format. This provider cannot perform drift detection of this configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [userPoolConfig] Amazon Cognito User Pool configuration. See `user_pool_config` Block for details.
  /// [visibility] Sets the value of the GraphQL API to public (`GLOBAL`) or private (`PRIVATE`). If no value is provided, the visibility will be set to `GLOBAL` by default. This value cannot be changed once the API has been created.
  /// [xrayEnabled] Whether tracing with X-ray is enabled. Defaults to false.
  GraphQLApiArgs({
    List<GraphQLApiAdditionalAuthenticationProvider>?
    additionalAuthenticationProviders,
    String? apiType,
    required String authenticationType,
    GraphQLApiEnhancedMetricsConfig? enhancedMetricsConfig,
    String? introspectionConfig,
    GraphQLApiLambdaAuthorizerConfig? lambdaAuthorizerConfig,
    GraphQLApiLogConfig? logConfig,
    String? mergedApiExecutionRoleArn,
    String? name,
    GraphQLApiOpenidConnectConfig? openidConnectConfig,
    int? queryDepthLimit,
    String? region,
    int? resolverCountLimit,
    String? schema,
    Map<String, String>? tags,
    GraphQLApiUserPoolConfig? userPoolConfig,
    String? visibility,
    bool? xrayEnabled,
  }) : additionalAuthenticationProviders =
           pulumi.Input.asOptionalInput<
             List<GraphQLApiAdditionalAuthenticationProvider>
           >(additionalAuthenticationProviders),
       apiType = pulumi.Input.asOptionalInput<String>(apiType),
       authenticationType = pulumi.Input.asInput<String>(authenticationType),
       enhancedMetricsConfig =
           pulumi.Input.asOptionalInput<GraphQLApiEnhancedMetricsConfig>(
             enhancedMetricsConfig,
           ),
       introspectionConfig = pulumi.Input.asOptionalInput<String>(
         introspectionConfig,
       ),
       lambdaAuthorizerConfig =
           pulumi.Input.asOptionalInput<GraphQLApiLambdaAuthorizerConfig>(
             lambdaAuthorizerConfig,
           ),
       logConfig = pulumi.Input.asOptionalInput<GraphQLApiLogConfig>(logConfig),
       mergedApiExecutionRoleArn = pulumi.Input.asOptionalInput<String>(
         mergedApiExecutionRoleArn,
       ),
       name = pulumi.Input.asOptionalInput<String>(name),
       openidConnectConfig =
           pulumi.Input.asOptionalInput<GraphQLApiOpenidConnectConfig>(
             openidConnectConfig,
           ),
       queryDepthLimit = pulumi.Input.asOptionalInput<int>(queryDepthLimit),
       region = pulumi.Input.asOptionalInput<String>(region),
       resolverCountLimit = pulumi.Input.asOptionalInput<int>(
         resolverCountLimit,
       ),
       schema = pulumi.Input.asOptionalInput<String>(schema),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       userPoolConfig = pulumi.Input.asOptionalInput<GraphQLApiUserPoolConfig>(
         userPoolConfig,
       ),
       visibility = pulumi.Input.asOptionalInput<String>(visibility),
       xrayEnabled = pulumi.Input.asOptionalInput<bool>(xrayEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalAuthenticationProviders':
          ?pulumi.Input.mapOptionalInputValue<
            List<GraphQLApiAdditionalAuthenticationProvider>,
            List<Map<String, dynamic>>
          >(
            additionalAuthenticationProviders,
            (value) =>
                pulumi.Input.encodeList<
                  GraphQLApiAdditionalAuthenticationProvider,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'apiType': ?apiType,
      'authenticationType': authenticationType,
      'enhancedMetricsConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GraphQLApiEnhancedMetricsConfig,
            Map<String, dynamic>
          >(enhancedMetricsConfig, (value) => value.toMap()),
      'introspectionConfig': ?introspectionConfig,
      'lambdaAuthorizerConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GraphQLApiLambdaAuthorizerConfig,
            Map<String, dynamic>
          >(lambdaAuthorizerConfig, (value) => value.toMap()),
      'logConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GraphQLApiLogConfig,
            Map<String, dynamic>
          >(logConfig, (value) => value.toMap()),
      'mergedApiExecutionRoleArn': ?mergedApiExecutionRoleArn,
      'name': ?name,
      'openidConnectConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GraphQLApiOpenidConnectConfig,
            Map<String, dynamic>
          >(openidConnectConfig, (value) => value.toMap()),
      'queryDepthLimit': ?queryDepthLimit,
      'region': ?region,
      'resolverCountLimit': ?resolverCountLimit,
      'schema': ?schema,
      'tags': ?tags,
      'userPoolConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GraphQLApiUserPoolConfig,
            Map<String, dynamic>
          >(userPoolConfig, (value) => value.toMap()),
      'visibility': ?visibility,
      'xrayEnabled': ?xrayEnabled,
    };
  }

  factory GraphQLApiArgs.fromMap(Map<String, dynamic> map) {
    return GraphQLApiArgs(
      additionalAuthenticationProviders:
          map['additionalAuthenticationProviders'] == null
          ? null
          : pulumi.Input.decodeList<GraphQLApiAdditionalAuthenticationProvider>(
              map['additionalAuthenticationProviders'],
              (value) => GraphQLApiAdditionalAuthenticationProvider.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      apiType: map['apiType'] == null ? null : map['apiType'] as String,
      authenticationType: map['authenticationType'] as String,
      enhancedMetricsConfig: map['enhancedMetricsConfig'] == null
          ? null
          : GraphQLApiEnhancedMetricsConfig.fromMap(
              (map['enhancedMetricsConfig'] as Map).cast<String, dynamic>(),
            ),
      introspectionConfig: map['introspectionConfig'] == null
          ? null
          : map['introspectionConfig'] as String,
      lambdaAuthorizerConfig: map['lambdaAuthorizerConfig'] == null
          ? null
          : GraphQLApiLambdaAuthorizerConfig.fromMap(
              (map['lambdaAuthorizerConfig'] as Map).cast<String, dynamic>(),
            ),
      logConfig: map['logConfig'] == null
          ? null
          : GraphQLApiLogConfig.fromMap(
              (map['logConfig'] as Map).cast<String, dynamic>(),
            ),
      mergedApiExecutionRoleArn: map['mergedApiExecutionRoleArn'] == null
          ? null
          : map['mergedApiExecutionRoleArn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      openidConnectConfig: map['openidConnectConfig'] == null
          ? null
          : GraphQLApiOpenidConnectConfig.fromMap(
              (map['openidConnectConfig'] as Map).cast<String, dynamic>(),
            ),
      queryDepthLimit: map['queryDepthLimit'] == null
          ? null
          : map['queryDepthLimit'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      resolverCountLimit: map['resolverCountLimit'] == null
          ? null
          : map['resolverCountLimit'] as int,
      schema: map['schema'] == null ? null : map['schema'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      userPoolConfig: map['userPoolConfig'] == null
          ? null
          : GraphQLApiUserPoolConfig.fromMap(
              (map['userPoolConfig'] as Map).cast<String, dynamic>(),
            ),
      visibility: map['visibility'] == null
          ? null
          : map['visibility'] as String,
      xrayEnabled: map['xrayEnabled'] == null
          ? null
          : map['xrayEnabled'] as bool,
    );
  }
}
