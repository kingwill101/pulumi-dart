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
  /// One or more additional authentication providers for the GraphQL API. See <span pulumi-lang-nodejs="`additionalAuthenticationProvider`" pulumi-lang-dotnet="`AdditionalAuthenticationProvider`" pulumi-lang-go="`additionalAuthenticationProvider`" pulumi-lang-python="`additional_authentication_provider`" pulumi-lang-yaml="`additionalAuthenticationProvider`" pulumi-lang-java="`additionalAuthenticationProvider`">`additional_authentication_provider`</span> Block for details.
  final Input<List<GraphQLApiAdditionalAuthenticationProvider>>?
      additionalAuthenticationProviders;

  /// API type. Valid values are `GRAPHQL` or `MERGED`. A `MERGED` type requires <span pulumi-lang-nodejs="`mergedApiExecutionRoleArn`" pulumi-lang-dotnet="`MergedApiExecutionRoleArn`" pulumi-lang-go="`mergedApiExecutionRoleArn`" pulumi-lang-python="`merged_api_execution_role_arn`" pulumi-lang-yaml="`mergedApiExecutionRoleArn`" pulumi-lang-java="`mergedApiExecutionRoleArn`">`merged_api_execution_role_arn`</span> to be set.
  final Input<String>? apiType;

  /// Authentication type. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`
  final Input<String> authenticationType;

  /// Enables and controls the enhanced metrics feature. See <span pulumi-lang-nodejs="`enhancedMetricsConfig`" pulumi-lang-dotnet="`EnhancedMetricsConfig`" pulumi-lang-go="`enhancedMetricsConfig`" pulumi-lang-python="`enhanced_metrics_config`" pulumi-lang-yaml="`enhancedMetricsConfig`" pulumi-lang-java="`enhancedMetricsConfig`">`enhanced_metrics_config`</span> Block for details.
  final Input<GraphQLApiEnhancedMetricsConfig>? enhancedMetricsConfig;

  /// Sets the value of the GraphQL API to enable (`ENABLED`) or disable (`DISABLED`) introspection. If no value is provided, the introspection configuration will be set to ENABLED by default. This field will produce an error if the operation attempts to use the introspection feature while this field is disabled. For more information about introspection, see [GraphQL introspection](https://graphql.org/learn/introspection/).
  final Input<String>? introspectionConfig;

  /// Nested argument containing Lambda authorizer configuration. See <span pulumi-lang-nodejs="`lambdaAuthorizerConfig`" pulumi-lang-dotnet="`LambdaAuthorizerConfig`" pulumi-lang-go="`lambdaAuthorizerConfig`" pulumi-lang-python="`lambda_authorizer_config`" pulumi-lang-yaml="`lambdaAuthorizerConfig`" pulumi-lang-java="`lambdaAuthorizerConfig`">`lambda_authorizer_config`</span> Block for details.
  final Input<GraphQLApiLambdaAuthorizerConfig>? lambdaAuthorizerConfig;

  /// Nested argument containing logging configuration. See <span pulumi-lang-nodejs="`logConfig`" pulumi-lang-dotnet="`LogConfig`" pulumi-lang-go="`logConfig`" pulumi-lang-python="`log_config`" pulumi-lang-yaml="`logConfig`" pulumi-lang-java="`logConfig`">`log_config`</span> Block for details.
  final Input<GraphQLApiLogConfig>? logConfig;

  /// ARN of the execution role when <span pulumi-lang-nodejs="`apiType`" pulumi-lang-dotnet="`ApiType`" pulumi-lang-go="`apiType`" pulumi-lang-python="`api_type`" pulumi-lang-yaml="`apiType`" pulumi-lang-java="`apiType`">`api_type`</span> is set to `MERGED`.
  final Input<String>? mergedApiExecutionRoleArn;

  /// User-supplied name for the GraphQL API.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Nested argument containing OpenID Connect configuration. See <span pulumi-lang-nodejs="`openidConnectConfig`" pulumi-lang-dotnet="`OpenidConnectConfig`" pulumi-lang-go="`openidConnectConfig`" pulumi-lang-python="`openid_connect_config`" pulumi-lang-yaml="`openidConnectConfig`" pulumi-lang-java="`openidConnectConfig`">`openid_connect_config`</span> Block for details.
  final Input<GraphQLApiOpenidConnectConfig>? openidConnectConfig;

  /// The maximum depth a query can have in a single request. Depth refers to the amount of nested levels allowed in the body of query. The default value is <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> (or unspecified), which indicates there's no depth limit. If you set a limit, it can be between <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> and <span pulumi-lang-nodejs="`75`" pulumi-lang-dotnet="`75`" pulumi-lang-go="`75`" pulumi-lang-python="`75`" pulumi-lang-yaml="`75`" pulumi-lang-java="`75`">`75`</span> nested levels. This field will produce a limit error if the operation falls out of bounds.
  ///
  /// Note that fields can still be set to nullable or non-nullable. If a non-nullable field produces an error, the error will be thrown upwards to the first nullable field available.
  final Input<int>? queryDepthLimit;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The maximum number of resolvers that can be invoked in a single request. The default value is <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> (or unspecified), which will set the limit to <span pulumi-lang-nodejs="`10000`" pulumi-lang-dotnet="`10000`" pulumi-lang-go="`10000`" pulumi-lang-python="`10000`" pulumi-lang-yaml="`10000`" pulumi-lang-java="`10000`">`10000`</span>. When specified, the limit value can be between <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> and <span pulumi-lang-nodejs="`10000`" pulumi-lang-dotnet="`10000`" pulumi-lang-go="`10000`" pulumi-lang-python="`10000`" pulumi-lang-yaml="`10000`" pulumi-lang-java="`10000`">`10000`</span>. This field will produce a limit error if the operation falls out of bounds.
  final Input<int>? resolverCountLimit;

  /// Schema definition, in GraphQL schema language format. This provider cannot perform drift detection of this configuration.
  final Input<String>? schema;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Amazon Cognito User Pool configuration. See <span pulumi-lang-nodejs="`userPoolConfig`" pulumi-lang-dotnet="`UserPoolConfig`" pulumi-lang-go="`userPoolConfig`" pulumi-lang-python="`user_pool_config`" pulumi-lang-yaml="`userPoolConfig`" pulumi-lang-java="`userPoolConfig`">`user_pool_config`</span> Block for details.
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
