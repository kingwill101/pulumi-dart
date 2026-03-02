// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_authentication_provider.dart';
import 'authentication_type_enum_value.dart';
import 'enhanced_metrics_config.dart';
import 'graph_qlapi_introspection_config_enum_value.dart';
import 'graph_qlapi_type_enum_value.dart';
import 'graph_qlapi_visibility_enum_value.dart';
import 'lambda_authorizer_config.dart';
import 'log_config.dart';
import 'open_idconnect_config.dart';
import 'user_pool_config.dart';

/// Definition of awsAppSyncGraphqlApi
class AwsAppSyncGraphqlApiProperties {
  /// <p>A list of additional authentication providers for the <code>GraphqlApi</code> API.</p>
  final pulumi.Input<List<AdditionalAuthenticationProvider>>? additionalAuthenticationProviders;
  /// <p>The API ID.</p>
  final pulumi.Input<String>? apiId;
  /// <p>The value that indicates whether the GraphQL API is a standard API (<code>GRAPHQL</code>) or merged API (<code>MERGED</code>).</p>
  final pulumi.Input<GraphQLApiTypeEnumValue>? apiType;
  /// <p>The Amazon Resource Name (ARN).</p>
  final pulumi.Input<String>? arn;
  /// <p>The authentication type.</p>
  final pulumi.Input<AuthenticationTypeEnumValue>? authenticationType;
  /// <p>The DNS records for the API.</p>
  final pulumi.Input<Map<String, String>>? dns;
  /// <p>The <code>enhancedMetricsConfig</code> object.</p>
  final pulumi.Input<EnhancedMetricsConfig>? enhancedMetricsConfig;
  /// <p>Sets the value of the GraphQL API to enable (<code>ENABLED</code>) or disable (<code>DISABLED</code>) introspection. If no value is provided, the introspection configuration will be set to <code>ENABLED</code> by default. This field will produce an error if the operation attempts to use the introspection feature while this field is disabled.</p> <p>For more information about introspection, see <a href='https://graphql.org/learn/introspection/'>GraphQL introspection</a>.</p>
  final pulumi.Input<GraphQLApiIntrospectionConfigEnumValue>? introspectionConfig;
  /// <p>Configuration for Lambda function authorization.</p>
  final pulumi.Input<LambdaAuthorizerConfig>? lambdaAuthorizerConfig;
  /// <p>The Amazon CloudWatch Logs configuration.</p>
  final pulumi.Input<LogConfig>? logConfig;
  /// <p>The Identity and Access Management service role ARN for a merged API. The AppSync service assumes this role on behalf of the Merged API to validate access to source APIs at runtime and to prompt the <code>AUTO_MERGE</code> to update the merged API endpoint with the source API changes automatically.</p>
  final pulumi.Input<String>? mergedApiExecutionRoleArn;
  /// <p>The API name.</p>
  final pulumi.Input<String>? name;
  /// <p>The OpenID Connect configuration.</p>
  final pulumi.Input<OpenIDConnectConfig>? openIDConnectConfig;
  /// <p>The account owner of the GraphQL API.</p>
  final pulumi.Input<String>? owner;
  /// <p>The owner contact information for an API resource.</p> <p>This field accepts any string input with a length of 0 - 256 characters.</p>
  final pulumi.Input<String>? ownerContact;
  /// <p>The maximum depth a query can have in a single request. Depth refers to the amount of nested levels allowed in the body of query. The default value is <code>0</code> (or unspecified), which indicates there's no depth limit. If you set a limit, it can be between <code>1</code> and <code>75</code> nested levels. This field will produce a limit error if the operation falls out of bounds.</p> <p>Note that fields can still be set to nullable or non-nullable. If a non-nullable field produces an error, the error will be thrown upwards to the first nullable field available.</p>
  final pulumi.Input<int>? queryDepthLimit;
  /// <p>The maximum number of resolvers that can be invoked in a single request. The default value is <code>0</code> (or unspecified), which will set the limit to <code>10000</code>. When specified, the limit value can be between <code>1</code> and <code>10000</code>. This field will produce a limit error if the operation falls out of bounds.</p>
  final pulumi.Input<int>? resolverCountLimit;
  /// <p>The tags.</p>
  final pulumi.Input<Map<String, String>>? tags;
  /// <p>The URIs.</p>
  final pulumi.Input<Map<String, String>>? uris;
  /// <p>The Amazon Cognito user pool configuration.</p>
  final pulumi.Input<UserPoolConfig>? userPoolConfig;
  /// <p>Sets the value of the GraphQL API to public (<code>GLOBAL</code>) or private (<code>PRIVATE</code>). If no value is provided, the visibility will be set to <code>GLOBAL</code> by default. This value cannot be changed once the API has been created.</p>
  final pulumi.Input<GraphQLApiVisibilityEnumValue>? visibility;
  /// <p>The ARN of the WAF access control list (ACL) associated with this <code>GraphqlApi</code>, if one exists.</p>
  final pulumi.Input<String>? wafWebAclArn;
  /// <p>A flag indicating whether to use X-Ray tracing for this <code>GraphqlApi</code>.</p>
  final pulumi.Input<bool>? xrayEnabled;

  /// Creates a new [AwsAppSyncGraphqlApiProperties].
  /// [additionalAuthenticationProviders] <p>A list of additional authentication providers for the <code>GraphqlApi</code> API.</p>
  /// [apiId] <p>The API ID.</p>
  /// [apiType] <p>The value that indicates whether the GraphQL API is a standard API (<code>GRAPHQL</code>) or merged API (<code>MERGED</code>).</p>
  /// [arn] <p>The Amazon Resource Name (ARN).</p>
  /// [authenticationType] <p>The authentication type.</p>
  /// [dns] <p>The DNS records for the API.</p>
  /// [enhancedMetricsConfig] <p>The <code>enhancedMetricsConfig</code> object.</p>
  /// [introspectionConfig] <p>Sets the value of the GraphQL API to enable (<code>ENABLED</code>) or disable (<code>DISABLED</code>) introspection. If no value is provided, the introspection configuration will be set to <code>ENABLED</code> by default. This field will produce an error if the operation attempts to use the introspection feature while this field is disabled.</p> <p>For more information about introspection, see <a href='https://graphql.org/learn/introspection/'>GraphQL introspection</a>.</p>
  /// [lambdaAuthorizerConfig] <p>Configuration for Lambda function authorization.</p>
  /// [logConfig] <p>The Amazon CloudWatch Logs configuration.</p>
  /// [mergedApiExecutionRoleArn] <p>The Identity and Access Management service role ARN for a merged API. The AppSync service assumes this role on behalf of the Merged API to validate access to source APIs at runtime and to prompt the <code>AUTO_MERGE</code> to update the merged API endpoint with the source API changes automatically.</p>
  /// [name] <p>The API name.</p>
  /// [openIDConnectConfig] <p>The OpenID Connect configuration.</p>
  /// [owner] <p>The account owner of the GraphQL API.</p>
  /// [ownerContact] <p>The owner contact information for an API resource.</p> <p>This field accepts any string input with a length of 0 - 256 characters.</p>
  /// [queryDepthLimit] <p>The maximum depth a query can have in a single request. Depth refers to the amount of nested levels allowed in the body of query. The default value is <code>0</code> (or unspecified), which indicates there's no depth limit. If you set a limit, it can be between <code>1</code> and <code>75</code> nested levels. This field will produce a limit error if the operation falls out of bounds.</p> <p>Note that fields can still be set to nullable or non-nullable. If a non-nullable field produces an error, the error will be thrown upwards to the first nullable field available.</p>
  /// [resolverCountLimit] <p>The maximum number of resolvers that can be invoked in a single request. The default value is <code>0</code> (or unspecified), which will set the limit to <code>10000</code>. When specified, the limit value can be between <code>1</code> and <code>10000</code>. This field will produce a limit error if the operation falls out of bounds.</p>
  /// [tags] <p>The tags.</p>
  /// [uris] <p>The URIs.</p>
  /// [userPoolConfig] <p>The Amazon Cognito user pool configuration.</p>
  /// [visibility] <p>Sets the value of the GraphQL API to public (<code>GLOBAL</code>) or private (<code>PRIVATE</code>). If no value is provided, the visibility will be set to <code>GLOBAL</code> by default. This value cannot be changed once the API has been created.</p>
  /// [wafWebAclArn] <p>The ARN of the WAF access control list (ACL) associated with this <code>GraphqlApi</code>, if one exists.</p>
  /// [xrayEnabled] <p>A flag indicating whether to use X-Ray tracing for this <code>GraphqlApi</code>.</p>
  AwsAppSyncGraphqlApiProperties({
    this.additionalAuthenticationProviders,
    this.apiId,
    this.apiType,
    this.arn,
    this.authenticationType,
    this.dns,
    this.enhancedMetricsConfig,
    this.introspectionConfig,
    this.lambdaAuthorizerConfig,
    this.logConfig,
    this.mergedApiExecutionRoleArn,
    this.name,
    this.openIDConnectConfig,
    this.owner,
    this.ownerContact,
    this.queryDepthLimit,
    this.resolverCountLimit,
    this.tags,
    this.uris,
    this.userPoolConfig,
    this.visibility,
    this.wafWebAclArn,
    this.xrayEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalAuthenticationProviders': ?pulumi.Input.mapOptionalInputValue<List<AdditionalAuthenticationProvider>, List<Map<String, dynamic>>>(additionalAuthenticationProviders, (value) => pulumi.Input.encodeList<AdditionalAuthenticationProvider, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiId': ?apiId,
      'apiType': ?pulumi.Input.mapOptionalInputValue<GraphQLApiTypeEnumValue, Map<String, dynamic>>(apiType, (value) => value.toMap()),
      'arn': ?arn,
      'authenticationType': ?pulumi.Input.mapOptionalInputValue<AuthenticationTypeEnumValue, Map<String, dynamic>>(authenticationType, (value) => value.toMap()),
      'dns': ?dns,
      'enhancedMetricsConfig': ?pulumi.Input.mapOptionalInputValue<EnhancedMetricsConfig, Map<String, dynamic>>(enhancedMetricsConfig, (value) => value.toMap()),
      'introspectionConfig': ?pulumi.Input.mapOptionalInputValue<GraphQLApiIntrospectionConfigEnumValue, Map<String, dynamic>>(introspectionConfig, (value) => value.toMap()),
      'lambdaAuthorizerConfig': ?pulumi.Input.mapOptionalInputValue<LambdaAuthorizerConfig, Map<String, dynamic>>(lambdaAuthorizerConfig, (value) => value.toMap()),
      'logConfig': ?pulumi.Input.mapOptionalInputValue<LogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'mergedApiExecutionRoleArn': ?mergedApiExecutionRoleArn,
      'name': ?name,
      'openIDConnectConfig': ?pulumi.Input.mapOptionalInputValue<OpenIDConnectConfig, Map<String, dynamic>>(openIDConnectConfig, (value) => value.toMap()),
      'owner': ?owner,
      'ownerContact': ?ownerContact,
      'queryDepthLimit': ?queryDepthLimit,
      'resolverCountLimit': ?resolverCountLimit,
      'tags': ?tags,
      'uris': ?uris,
      'userPoolConfig': ?pulumi.Input.mapOptionalInputValue<UserPoolConfig, Map<String, dynamic>>(userPoolConfig, (value) => value.toMap()),
      'visibility': ?pulumi.Input.mapOptionalInputValue<GraphQLApiVisibilityEnumValue, Map<String, dynamic>>(visibility, (value) => value.toMap()),
      'wafWebAclArn': ?wafWebAclArn,
      'xrayEnabled': ?xrayEnabled,
    };
  }

  factory AwsAppSyncGraphqlApiProperties.fromMap(Map<String, dynamic> map) {
    return AwsAppSyncGraphqlApiProperties(
      additionalAuthenticationProviders: map['additionalAuthenticationProviders'] == null ? null : (pulumi.Input.decodeList<AdditionalAuthenticationProvider>(map['additionalAuthenticationProviders']!, (value) => AdditionalAuthenticationProvider.fromMap((value as Map).cast<String, dynamic>()))).input(),
      apiId: map['apiId'] == null ? null : (map['apiId']! as String).input(),
      apiType: map['apiType'] == null ? null : (GraphQLApiTypeEnumValue.fromMap((map['apiType']! as Map).cast<String, dynamic>())).input(),
      arn: map['arn'] == null ? null : (map['arn']! as String).input(),
      authenticationType: map['authenticationType'] == null ? null : (AuthenticationTypeEnumValue.fromMap((map['authenticationType']! as Map).cast<String, dynamic>())).input(),
      dns: map['dns'] == null ? null : ((map['dns']! as Map).cast<String, String>()).input(),
      enhancedMetricsConfig: map['enhancedMetricsConfig'] == null ? null : (EnhancedMetricsConfig.fromMap((map['enhancedMetricsConfig']! as Map).cast<String, dynamic>())).input(),
      introspectionConfig: map['introspectionConfig'] == null ? null : (GraphQLApiIntrospectionConfigEnumValue.fromMap((map['introspectionConfig']! as Map).cast<String, dynamic>())).input(),
      lambdaAuthorizerConfig: map['lambdaAuthorizerConfig'] == null ? null : (LambdaAuthorizerConfig.fromMap((map['lambdaAuthorizerConfig']! as Map).cast<String, dynamic>())).input(),
      logConfig: map['logConfig'] == null ? null : (LogConfig.fromMap((map['logConfig']! as Map).cast<String, dynamic>())).input(),
      mergedApiExecutionRoleArn: map['mergedApiExecutionRoleArn'] == null ? null : (map['mergedApiExecutionRoleArn']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      openIDConnectConfig: map['openIDConnectConfig'] == null ? null : (OpenIDConnectConfig.fromMap((map['openIDConnectConfig']! as Map).cast<String, dynamic>())).input(),
      owner: map['owner'] == null ? null : (map['owner']! as String).input(),
      ownerContact: map['ownerContact'] == null ? null : (map['ownerContact']! as String).input(),
      queryDepthLimit: map['queryDepthLimit'] == null ? null : (map['queryDepthLimit']! as int).input(),
      resolverCountLimit: map['resolverCountLimit'] == null ? null : (map['resolverCountLimit']! as int).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      uris: map['uris'] == null ? null : ((map['uris']! as Map).cast<String, String>()).input(),
      userPoolConfig: map['userPoolConfig'] == null ? null : (UserPoolConfig.fromMap((map['userPoolConfig']! as Map).cast<String, dynamic>())).input(),
      visibility: map['visibility'] == null ? null : (GraphQLApiVisibilityEnumValue.fromMap((map['visibility']! as Map).cast<String, dynamic>())).input(),
      wafWebAclArn: map['wafWebAclArn'] == null ? null : (map['wafWebAclArn']! as String).input(),
      xrayEnabled: map['xrayEnabled'] == null ? null : (map['xrayEnabled']! as bool).input(),
    );
  }
}

