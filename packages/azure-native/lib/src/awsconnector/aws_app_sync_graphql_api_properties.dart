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
  final List<AdditionalAuthenticationProvider>? additionalAuthenticationProviders;
  /// <p>The API ID.</p>
  final String? apiId;
  /// <p>The value that indicates whether the GraphQL API is a standard API (<code>GRAPHQL</code>) or merged API (<code>MERGED</code>).</p>
  final GraphQLApiTypeEnumValue? apiType;
  /// <p>The Amazon Resource Name (ARN).</p>
  final String? arn;
  /// <p>The authentication type.</p>
  final AuthenticationTypeEnumValue? authenticationType;
  /// <p>The DNS records for the API.</p>
  final Map<String, String>? dns;
  /// <p>The <code>enhancedMetricsConfig</code> object.</p>
  final EnhancedMetricsConfig? enhancedMetricsConfig;
  /// <p>Sets the value of the GraphQL API to enable (<code>ENABLED</code>) or disable (<code>DISABLED</code>) introspection. If no value is provided, the introspection configuration will be set to <code>ENABLED</code> by default. This field will produce an error if the operation attempts to use the introspection feature while this field is disabled.</p> <p>For more information about introspection, see <a href='https://graphql.org/learn/introspection/'>GraphQL introspection</a>.</p>
  final GraphQLApiIntrospectionConfigEnumValue? introspectionConfig;
  /// <p>Configuration for Lambda function authorization.</p>
  final LambdaAuthorizerConfig? lambdaAuthorizerConfig;
  /// <p>The Amazon CloudWatch Logs configuration.</p>
  final LogConfig? logConfig;
  /// <p>The Identity and Access Management service role ARN for a merged API. The AppSync service assumes this role on behalf of the Merged API to validate access to source APIs at runtime and to prompt the <code>AUTO_MERGE</code> to update the merged API endpoint with the source API changes automatically.</p>
  final String? mergedApiExecutionRoleArn;
  /// <p>The API name.</p>
  final String? name;
  /// <p>The OpenID Connect configuration.</p>
  final OpenIDConnectConfig? openIDConnectConfig;
  /// <p>The account owner of the GraphQL API.</p>
  final String? owner;
  /// <p>The owner contact information for an API resource.</p> <p>This field accepts any string input with a length of 0 - 256 characters.</p>
  final String? ownerContact;
  /// <p>The maximum depth a query can have in a single request. Depth refers to the amount of nested levels allowed in the body of query. The default value is <code>0</code> (or unspecified), which indicates there's no depth limit. If you set a limit, it can be between <code>1</code> and <code>75</code> nested levels. This field will produce a limit error if the operation falls out of bounds.</p> <p>Note that fields can still be set to nullable or non-nullable. If a non-nullable field produces an error, the error will be thrown upwards to the first nullable field available.</p>
  final int? queryDepthLimit;
  /// <p>The maximum number of resolvers that can be invoked in a single request. The default value is <code>0</code> (or unspecified), which will set the limit to <code>10000</code>. When specified, the limit value can be between <code>1</code> and <code>10000</code>. This field will produce a limit error if the operation falls out of bounds.</p>
  final int? resolverCountLimit;
  /// <p>The tags.</p>
  final Map<String, String>? tags;
  /// <p>The URIs.</p>
  final Map<String, String>? uris;
  /// <p>The Amazon Cognito user pool configuration.</p>
  final UserPoolConfig? userPoolConfig;
  /// <p>Sets the value of the GraphQL API to public (<code>GLOBAL</code>) or private (<code>PRIVATE</code>). If no value is provided, the visibility will be set to <code>GLOBAL</code> by default. This value cannot be changed once the API has been created.</p>
  final GraphQLApiVisibilityEnumValue? visibility;
  /// <p>The ARN of the WAF access control list (ACL) associated with this <code>GraphqlApi</code>, if one exists.</p>
  final String? wafWebAclArn;
  /// <p>A flag indicating whether to use X-Ray tracing for this <code>GraphqlApi</code>.</p>
  final bool? xrayEnabled;

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
      'additionalAuthenticationProviders': ?additionalAuthenticationProviders == null ? null : pulumi.Input.encodeList<AdditionalAuthenticationProvider, Map<String, dynamic>>(additionalAuthenticationProviders!, (value) => value.toMap()),
      'apiId': ?apiId,
      'apiType': ?apiType == null ? null : apiType!.toMap(),
      'arn': ?arn,
      'authenticationType': ?authenticationType == null ? null : authenticationType!.toMap(),
      'dns': ?dns,
      'enhancedMetricsConfig': ?enhancedMetricsConfig == null ? null : enhancedMetricsConfig!.toMap(),
      'introspectionConfig': ?introspectionConfig == null ? null : introspectionConfig!.toMap(),
      'lambdaAuthorizerConfig': ?lambdaAuthorizerConfig == null ? null : lambdaAuthorizerConfig!.toMap(),
      'logConfig': ?logConfig == null ? null : logConfig!.toMap(),
      'mergedApiExecutionRoleArn': ?mergedApiExecutionRoleArn,
      'name': ?name,
      'openIDConnectConfig': ?openIDConnectConfig == null ? null : openIDConnectConfig!.toMap(),
      'owner': ?owner,
      'ownerContact': ?ownerContact,
      'queryDepthLimit': ?queryDepthLimit,
      'resolverCountLimit': ?resolverCountLimit,
      'tags': ?tags,
      'uris': ?uris,
      'userPoolConfig': ?userPoolConfig == null ? null : userPoolConfig!.toMap(),
      'visibility': ?visibility == null ? null : visibility!.toMap(),
      'wafWebAclArn': ?wafWebAclArn,
      'xrayEnabled': ?xrayEnabled,
    };
  }

  factory AwsAppSyncGraphqlApiProperties.fromMap(Map<String, dynamic> map) {
    return AwsAppSyncGraphqlApiProperties(
      additionalAuthenticationProviders: map['additionalAuthenticationProviders'] == null ? null : pulumi.Input.decodeList<AdditionalAuthenticationProvider>(map['additionalAuthenticationProviders'], (value) => AdditionalAuthenticationProvider.fromMap((value as Map).cast<String, dynamic>())),
      apiId: map['apiId'] == null ? null : map['apiId'] as String,
      apiType: map['apiType'] == null ? null : GraphQLApiTypeEnumValue.fromMap((map['apiType'] as Map).cast<String, dynamic>()),
      arn: map['arn'] == null ? null : map['arn'] as String,
      authenticationType: map['authenticationType'] == null ? null : AuthenticationTypeEnumValue.fromMap((map['authenticationType'] as Map).cast<String, dynamic>()),
      dns: map['dns'] == null ? null : (map['dns'] as Map).cast<String, String>(),
      enhancedMetricsConfig: map['enhancedMetricsConfig'] == null ? null : EnhancedMetricsConfig.fromMap((map['enhancedMetricsConfig'] as Map).cast<String, dynamic>()),
      introspectionConfig: map['introspectionConfig'] == null ? null : GraphQLApiIntrospectionConfigEnumValue.fromMap((map['introspectionConfig'] as Map).cast<String, dynamic>()),
      lambdaAuthorizerConfig: map['lambdaAuthorizerConfig'] == null ? null : LambdaAuthorizerConfig.fromMap((map['lambdaAuthorizerConfig'] as Map).cast<String, dynamic>()),
      logConfig: map['logConfig'] == null ? null : LogConfig.fromMap((map['logConfig'] as Map).cast<String, dynamic>()),
      mergedApiExecutionRoleArn: map['mergedApiExecutionRoleArn'] == null ? null : map['mergedApiExecutionRoleArn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      openIDConnectConfig: map['openIDConnectConfig'] == null ? null : OpenIDConnectConfig.fromMap((map['openIDConnectConfig'] as Map).cast<String, dynamic>()),
      owner: map['owner'] == null ? null : map['owner'] as String,
      ownerContact: map['ownerContact'] == null ? null : map['ownerContact'] as String,
      queryDepthLimit: map['queryDepthLimit'] == null ? null : map['queryDepthLimit'] as int,
      resolverCountLimit: map['resolverCountLimit'] == null ? null : map['resolverCountLimit'] as int,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      uris: map['uris'] == null ? null : (map['uris'] as Map).cast<String, String>(),
      userPoolConfig: map['userPoolConfig'] == null ? null : UserPoolConfig.fromMap((map['userPoolConfig'] as Map).cast<String, dynamic>()),
      visibility: map['visibility'] == null ? null : GraphQLApiVisibilityEnumValue.fromMap((map['visibility'] as Map).cast<String, dynamic>()),
      wafWebAclArn: map['wafWebAclArn'] == null ? null : map['wafWebAclArn'] as String,
      xrayEnabled: map['xrayEnabled'] == null ? null : map['xrayEnabled'] as bool,
    );
  }
}

