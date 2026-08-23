// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'graph_qlapi_additional_authentication_provider.dart';
import 'graph_qlapi_enhanced_metrics_config.dart';
import 'graph_qlapi_lambda_authorizer_config.dart';
import 'graph_qlapi_log_config.dart';
import 'graph_qlapi_openid_connect_config.dart';
import 'graph_qlapi_user_pool_config.dart';

/// Input properties used for looking up and filtering GraphQLApi resources.
class GraphQLApiState {
  /// One or more additional authentication providers for the GraphQL API. See `additionalAuthenticationProvider` Block for details.
  final pulumi.Input<List<GraphQLApiAdditionalAuthenticationProvider>>? additionalAuthenticationProviders;
  /// API type. Valid values are `GRAPHQL` or `MERGED`. A `MERGED` type requires `mergedApiExecutionRoleArn` to be set.
  final pulumi.Input<String>? apiType;
  /// ARN
  final pulumi.Input<String>? arn;
  /// Authentication type. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`
  final pulumi.Input<String>? authenticationType;
  /// Enables and controls the enhanced metrics feature. See `enhancedMetricsConfig` Block for details.
  final pulumi.Input<GraphQLApiEnhancedMetricsConfig>? enhancedMetricsConfig;
  /// Sets the value of the GraphQL API to enable (`ENABLED`) or disable (`DISABLED`) introspection. If no value is provided, the introspection configuration will be set to ENABLED by default. This field will produce an error if the operation attempts to use the introspection feature while this field is disabled. For more information about introspection, see [GraphQL introspection](https://graphql.org/learn/introspection/).
  final pulumi.Input<String>? introspectionConfig;
  /// Nested argument containing Lambda authorizer configuration. See `lambdaAuthorizerConfig` Block for details.
  final pulumi.Input<GraphQLApiLambdaAuthorizerConfig>? lambdaAuthorizerConfig;
  /// Nested argument containing logging configuration. See `logConfig` Block for details.
  final pulumi.Input<GraphQLApiLogConfig>? logConfig;
  /// ARN of the execution role when `apiType` is set to `MERGED`.
  final pulumi.Input<String>? mergedApiExecutionRoleArn;
  /// User-supplied name for the GraphQL API.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Nested argument containing OpenID Connect configuration. See `openidConnectConfig` Block for details.
  final pulumi.Input<GraphQLApiOpenidConnectConfig>? openidConnectConfig;
  /// Maximum depth a query can have in a single request. Depth refers to the amount of nested levels allowed in the body of query. The default value is `0` (or unspecified), which indicates there's no depth limit. If you set a limit, it can be between `1` and `75` nested levels. This field will produce a limit error if the operation falls out of bounds.
  ///
  /// Note that fields can still be set to nullable or non-nullable. If a non-nullable field produces an error, the error will be thrown upwards to the first nullable field available.
  final pulumi.Input<int>? queryDepthLimit;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Maximum number of resolvers that can be invoked in a single request. The default value is `0` (or unspecified), which will set the limit to `10000`. When specified, the limit value can be between `1` and `10000`. This field will produce a limit error if the operation falls out of bounds.
  final pulumi.Input<int>? resolverCountLimit;
  /// Schema definition, in GraphQL schema language format. This provider cannot perform drift detection of this configuration.
  final pulumi.Input<String>? schema;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Map of URIs associated with the API E.g., `uris["GRAPHQL"] = https://ID.appsync-api.REGION.amazonaws.com/graphql`
  final pulumi.Input<Map<String, String>>? uris;
  /// Amazon Cognito User Pool configuration. See `userPoolConfig` Block for details.
  final pulumi.Input<GraphQLApiUserPoolConfig>? userPoolConfig;
  /// Sets the value of the GraphQL API to public (`GLOBAL`) or private (`PRIVATE`). If no value is provided, the visibility will be set to `GLOBAL` by default. This value cannot be changed once the API has been created.
  final pulumi.Input<String>? visibility;
  /// Whether tracing with X-ray is enabled. Defaults to false.
  final pulumi.Input<bool>? xrayEnabled;

  /// Creates a new [GraphQLApiState].
  /// [additionalAuthenticationProviders] One or more additional authentication providers for the GraphQL API. See `additionalAuthenticationProvider` Block for details.
  /// [apiType] API type. Valid values are `GRAPHQL` or `MERGED`. A `MERGED` type requires `mergedApiExecutionRoleArn` to be set.
  /// [arn] ARN
  /// [authenticationType] Authentication type. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`
  /// [enhancedMetricsConfig] Enables and controls the enhanced metrics feature. See `enhancedMetricsConfig` Block for details.
  /// [introspectionConfig] Sets the value of the GraphQL API to enable (`ENABLED`) or disable (`DISABLED`) introspection. If no value is provided, the introspection configuration will be set to ENABLED by default. This field will produce an error if the operation attempts to use the introspection feature while this field is disabled. For more information about introspection, see [GraphQL introspection](https://graphql.org/learn/introspection/).
  /// [lambdaAuthorizerConfig] Nested argument containing Lambda authorizer configuration. See `lambdaAuthorizerConfig` Block for details.
  /// [logConfig] Nested argument containing logging configuration. See `logConfig` Block for details.
  /// [mergedApiExecutionRoleArn] ARN of the execution role when `apiType` is set to `MERGED`.
  /// [name] User-supplied name for the GraphQL API.
  /// [openidConnectConfig] Nested argument containing OpenID Connect configuration. See `openidConnectConfig` Block for details.
  /// [queryDepthLimit] Maximum depth a query can have in a single request. Depth refers to the amount of nested levels allowed in the body of query. The default value is `0` (or unspecified), which indicates there's no depth limit. If you set a limit, it can be between `1` and `75` nested levels. This field will produce a limit error if the operation falls out of bounds.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resolverCountLimit] Maximum number of resolvers that can be invoked in a single request. The default value is `0` (or unspecified), which will set the limit to `10000`. When specified, the limit value can be between `1` and `10000`. This field will produce a limit error if the operation falls out of bounds.
  /// [schema] Schema definition, in GraphQL schema language format. This provider cannot perform drift detection of this configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [uris] Map of URIs associated with the API E.g., `uris["GRAPHQL"] = https://ID.appsync-api.REGION.amazonaws.com/graphql`
  /// [userPoolConfig] Amazon Cognito User Pool configuration. See `userPoolConfig` Block for details.
  /// [visibility] Sets the value of the GraphQL API to public (`GLOBAL`) or private (`PRIVATE`). If no value is provided, the visibility will be set to `GLOBAL` by default. This value cannot be changed once the API has been created.
  /// [xrayEnabled] Whether tracing with X-ray is enabled. Defaults to false.
  const GraphQLApiState({
    this.additionalAuthenticationProviders,
    this.apiType,
    this.arn,
    this.authenticationType,
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
    this.tagsAll,
    this.uris,
    this.userPoolConfig,
    this.visibility,
    this.xrayEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalAuthenticationProviders': ?pulumi.Input.mapOptionalInputValue<List<GraphQLApiAdditionalAuthenticationProvider>, List<Map<String, dynamic>>>(additionalAuthenticationProviders, (value) => pulumi.Input.encodeList<GraphQLApiAdditionalAuthenticationProvider, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiType': ?apiType,
      'arn': ?arn,
      'authenticationType': ?authenticationType,
      'enhancedMetricsConfig': ?pulumi.Input.mapOptionalInputValue<GraphQLApiEnhancedMetricsConfig, Map<String, dynamic>>(enhancedMetricsConfig, (value) => value.toMap()),
      'introspectionConfig': ?introspectionConfig,
      'lambdaAuthorizerConfig': ?pulumi.Input.mapOptionalInputValue<GraphQLApiLambdaAuthorizerConfig, Map<String, dynamic>>(lambdaAuthorizerConfig, (value) => value.toMap()),
      'logConfig': ?pulumi.Input.mapOptionalInputValue<GraphQLApiLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'mergedApiExecutionRoleArn': ?mergedApiExecutionRoleArn,
      'name': ?name,
      'openidConnectConfig': ?pulumi.Input.mapOptionalInputValue<GraphQLApiOpenidConnectConfig, Map<String, dynamic>>(openidConnectConfig, (value) => value.toMap()),
      'queryDepthLimit': ?queryDepthLimit,
      'region': ?region,
      'resolverCountLimit': ?resolverCountLimit,
      'schema': ?schema,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'uris': ?uris,
      'userPoolConfig': ?pulumi.Input.mapOptionalInputValue<GraphQLApiUserPoolConfig, Map<String, dynamic>>(userPoolConfig, (value) => value.toMap()),
      'visibility': ?visibility,
      'xrayEnabled': ?xrayEnabled,
    };
  }

  factory GraphQLApiState.fromMap(Map<String, dynamic> map) {
    return GraphQLApiState(
      additionalAuthenticationProviders: (() { final guardedValue = map['additionalAuthenticationProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GraphQLApiAdditionalAuthenticationProvider>(guardedValue, (value) => GraphQLApiAdditionalAuthenticationProvider.fromMap((value as Map).cast<String, dynamic>()))); })(),
      apiType: (() { final guardedValue = map['apiType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enhancedMetricsConfig: (() { final guardedValue = map['enhancedMetricsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GraphQLApiEnhancedMetricsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      introspectionConfig: (() { final guardedValue = map['introspectionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lambdaAuthorizerConfig: (() { final guardedValue = map['lambdaAuthorizerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GraphQLApiLambdaAuthorizerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logConfig: (() { final guardedValue = map['logConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GraphQLApiLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mergedApiExecutionRoleArn: (() { final guardedValue = map['mergedApiExecutionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      openidConnectConfig: (() { final guardedValue = map['openidConnectConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GraphQLApiOpenidConnectConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      queryDepthLimit: (() { final guardedValue = map['queryDepthLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resolverCountLimit: (() { final guardedValue = map['resolverCountLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      uris: (() { final guardedValue = map['uris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userPoolConfig: (() { final guardedValue = map['userPoolConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GraphQLApiUserPoolConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      xrayEnabled: (() { final guardedValue = map['xrayEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
