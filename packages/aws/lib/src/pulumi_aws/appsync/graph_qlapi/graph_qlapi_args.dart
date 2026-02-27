// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../graph_qlapi_additional_authentication_provider/graph_qlapi_additional_authentication_provider.dart';
import '../graph_qlapi_enhanced_metrics_config/graph_qlapi_enhanced_metrics_config.dart';
import '../graph_qlapi_lambda_authorizer_config/graph_qlapi_lambda_authorizer_config.dart';
import '../graph_qlapi_log_config/graph_qlapi_log_config.dart';
import '../graph_qlapi_openid_connect_config/graph_qlapi_openid_connect_config.dart';
import '../graph_qlapi_user_pool_config/graph_qlapi_user_pool_config.dart';

/// The set of arguments for GraphQLApi.
class GraphQLApiArgs {
  /// One or more additional authentication providers for the GraphQL API. See `additional_authentication_provider` Block for details.
  final Input<List<GraphQLApiAdditionalAuthenticationProvider>>?
      additionalAuthenticationProviders;

  /// API type. Valid values are `GRAPHQL` or `MERGED`. A `MERGED` type requires `merged_api_execution_role_arn` to be set.
  final Input<String>? apiType;

  /// Authentication type. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`
  final Input<String> authenticationType;

  /// Enables and controls the enhanced metrics feature. See `enhanced_metrics_config` Block for details.
  final Input<GraphQLApiEnhancedMetricsConfig>? enhancedMetricsConfig;

  /// Sets the value of the GraphQL API to enable (`ENABLED`) or disable (`DISABLED`) introspection. If no value is provided, the introspection configuration will be set to ENABLED by default. This field will produce an error if the operation attempts to use the introspection feature while this field is disabled. For more information about introspection, see [GraphQL introspection](https://graphql.org/learn/introspection/).
  final Input<String>? introspectionConfig;

  /// Nested argument containing Lambda authorizer configuration. See `lambda_authorizer_config` Block for details.
  final Input<GraphQLApiLambdaAuthorizerConfig>? lambdaAuthorizerConfig;

  /// Nested argument containing logging configuration. See `log_config` Block for details.
  final Input<GraphQLApiLogConfig>? logConfig;

  /// ARN of the execution role when `api_type` is set to `MERGED`.
  final Input<String>? mergedApiExecutionRoleArn;

  /// User-supplied name for the GraphQL API.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Nested argument containing OpenID Connect configuration. See `openid_connect_config` Block for details.
  final Input<GraphQLApiOpenidConnectConfig>? openidConnectConfig;

  /// The maximum depth a query can have in a single request. Depth refers to the amount of nested levels allowed in the body of query. The default value is `0` (or unspecified), which indicates there's no depth limit. If you set a limit, it can be between `1` and `75` nested levels. This field will produce a limit error if the operation falls out of bounds.
  ///
  /// Note that fields can still be set to nullable or non-nullable. If a non-nullable field produces an error, the error will be thrown upwards to the first nullable field available.
  final Input<int>? queryDepthLimit;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The maximum number of resolvers that can be invoked in a single request. The default value is `0` (or unspecified), which will set the limit to `10000`. When specified, the limit value can be between `1` and `10000`. This field will produce a limit error if the operation falls out of bounds.
  final Input<int>? resolverCountLimit;

  /// Schema definition, in GraphQL schema language format. This provider cannot perform drift detection of this configuration.
  final Input<String>? schema;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Amazon Cognito User Pool configuration. See `user_pool_config` Block for details.
  final Input<GraphQLApiUserPoolConfig>? userPoolConfig;

  /// Sets the value of the GraphQL API to public (`GLOBAL`) or private (`PRIVATE`). If no value is provided, the visibility will be set to `GLOBAL` by default. This value cannot be changed once the API has been created.
  final Input<String>? visibility;

  /// Whether tracing with X-ray is enabled. Defaults to false.
  final Input<bool>? xrayEnabled;

  GraphQLApiArgs({
    this.additionalAuthenticationProviders,
    this.apiType,
    required this.authenticationType,
    this.enhancedMetricsConfig,
    this.introspectionConfig,
    this.lambdaAuthorizerConfig,
    this.logConfig,
    this.mergedApiExecutionRoleArn,
    this.name,
    this.openidConnectConfig,
    this.queryDepthLimit,
    this.region,
    this.resolverCountLimit,
    this.schema,
    this.tags,
    this.userPoolConfig,
    this.visibility,
    this.xrayEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalAuthenticationProvidersValue =
        additionalAuthenticationProviders;
    if (additionalAuthenticationProvidersValue != null) {
      map['additionalAuthenticationProviders'] = Input.mapOptionalInputValue<
              List<GraphQLApiAdditionalAuthenticationProvider>,
              List<Map<String, dynamic>>>(
          additionalAuthenticationProvidersValue,
          (value) => Input.encodeList<
              GraphQLApiAdditionalAuthenticationProvider,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final apiTypeValue = apiType;
    if (apiTypeValue != null) {
      map['apiType'] = apiTypeValue;
    }
    map['authenticationType'] = authenticationType;
    final enhancedMetricsConfigValue = enhancedMetricsConfig;
    if (enhancedMetricsConfigValue != null) {
      map['enhancedMetricsConfig'] = Input.mapOptionalInputValue<
              GraphQLApiEnhancedMetricsConfig, Map<String, dynamic>>(
          enhancedMetricsConfigValue, (value) => value.toMap());
    }
    final introspectionConfigValue = introspectionConfig;
    if (introspectionConfigValue != null) {
      map['introspectionConfig'] = introspectionConfigValue;
    }
    final lambdaAuthorizerConfigValue = lambdaAuthorizerConfig;
    if (lambdaAuthorizerConfigValue != null) {
      map['lambdaAuthorizerConfig'] = Input.mapOptionalInputValue<
              GraphQLApiLambdaAuthorizerConfig, Map<String, dynamic>>(
          lambdaAuthorizerConfigValue, (value) => value.toMap());
    }
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] = Input.mapOptionalInputValue<GraphQLApiLogConfig,
          Map<String, dynamic>>(logConfigValue, (value) => value.toMap());
    }
    final mergedApiExecutionRoleArnValue = mergedApiExecutionRoleArn;
    if (mergedApiExecutionRoleArnValue != null) {
      map['mergedApiExecutionRoleArn'] = mergedApiExecutionRoleArnValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final openidConnectConfigValue = openidConnectConfig;
    if (openidConnectConfigValue != null) {
      map['openidConnectConfig'] = Input.mapOptionalInputValue<
              GraphQLApiOpenidConnectConfig, Map<String, dynamic>>(
          openidConnectConfigValue, (value) => value.toMap());
    }
    final queryDepthLimitValue = queryDepthLimit;
    if (queryDepthLimitValue != null) {
      map['queryDepthLimit'] = queryDepthLimitValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resolverCountLimitValue = resolverCountLimit;
    if (resolverCountLimitValue != null) {
      map['resolverCountLimit'] = resolverCountLimitValue;
    }
    final schemaValue = schema;
    if (schemaValue != null) {
      map['schema'] = schemaValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final userPoolConfigValue = userPoolConfig;
    if (userPoolConfigValue != null) {
      map['userPoolConfig'] = Input.mapOptionalInputValue<
          GraphQLApiUserPoolConfig,
          Map<String, dynamic>>(userPoolConfigValue, (value) => value.toMap());
    }
    final visibilityValue = visibility;
    if (visibilityValue != null) {
      map['visibility'] = visibilityValue;
    }
    final xrayEnabledValue = xrayEnabled;
    if (xrayEnabledValue != null) {
      map['xrayEnabled'] = xrayEnabledValue;
    }
    return map;
  }

  factory GraphQLApiArgs.fromMap(Map<String, dynamic> map) {
    return GraphQLApiArgs(
      additionalAuthenticationProviders: Input.asOptionalInput<
              List<GraphQLApiAdditionalAuthenticationProvider>>(
          map['additionalAuthenticationProviders']),
      apiType: Input.asOptionalInput<String>(map['apiType']),
      authenticationType: Input.asInput<String>(map['authenticationType']),
      enhancedMetricsConfig:
          Input.asOptionalInput<GraphQLApiEnhancedMetricsConfig>(
              map['enhancedMetricsConfig']),
      introspectionConfig:
          Input.asOptionalInput<String>(map['introspectionConfig']),
      lambdaAuthorizerConfig:
          Input.asOptionalInput<GraphQLApiLambdaAuthorizerConfig>(
              map['lambdaAuthorizerConfig']),
      logConfig: Input.asOptionalInput<GraphQLApiLogConfig>(map['logConfig']),
      mergedApiExecutionRoleArn:
          Input.asOptionalInput<String>(map['mergedApiExecutionRoleArn']),
      name: Input.asOptionalInput<String>(map['name']),
      openidConnectConfig: Input.asOptionalInput<GraphQLApiOpenidConnectConfig>(
          map['openidConnectConfig']),
      queryDepthLimit: Input.asOptionalInput<int>(map['queryDepthLimit']),
      region: Input.asOptionalInput<String>(map['region']),
      resolverCountLimit: Input.asOptionalInput<int>(map['resolverCountLimit']),
      schema: Input.asOptionalInput<String>(map['schema']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      userPoolConfig: Input.asOptionalInput<GraphQLApiUserPoolConfig>(
          map['userPoolConfig']),
      visibility: Input.asOptionalInput<String>(map['visibility']),
      xrayEnabled: Input.asOptionalInput<bool>(map['xrayEnabled']),
    );
  }
}
