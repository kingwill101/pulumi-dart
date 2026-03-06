// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_authentication_provider_response.dart';
import 'authentication_type_enum_value_response.dart';
import 'enhanced_metrics_config_response.dart';
import 'graph_qlapi_introspection_config_enum_value_response.dart';
import 'graph_qlapi_type_enum_value_response.dart';
import 'graph_qlapi_visibility_enum_value_response.dart';
import 'lambda_authorizer_config_response.dart';
import 'log_config_response.dart';
import 'open_idconnect_config_response.dart';
import 'user_pool_config_response.dart';

/// Definition of awsAppSyncGraphqlApi
class AwsAppSyncGraphqlApiPropertiesResponse {
  /// &lt;p&gt;A list of additional authentication providers for the &lt;code&gt;GraphqlApi&lt;/code&gt; API.&lt;/p&gt;
  final pulumi.Input<List<AdditionalAuthenticationProviderResponse>>? additionalAuthenticationProviders;
  /// &lt;p&gt;The API ID.&lt;/p&gt;
  final pulumi.Input<String>? apiId;
  /// &lt;p&gt;The value that indicates whether the GraphQL API is a standard API (&lt;code&gt;GRAPHQL&lt;/code&gt;) or merged API (&lt;code&gt;MERGED&lt;/code&gt;).&lt;/p&gt;
  final pulumi.Input<GraphQLApiTypeEnumValueResponse>? apiType;
  /// &lt;p&gt;The Amazon Resource Name (ARN).&lt;/p&gt;
  final pulumi.Input<String>? arn;
  /// &lt;p&gt;The authentication type.&lt;/p&gt;
  final pulumi.Input<AuthenticationTypeEnumValueResponse>? authenticationType;
  /// &lt;p&gt;The DNS records for the API.&lt;/p&gt;
  final pulumi.Input<Map<String, String>>? dns;
  /// &lt;p&gt;The &lt;code&gt;enhancedMetricsConfig&lt;/code&gt; object.&lt;/p&gt;
  final pulumi.Input<EnhancedMetricsConfigResponse>? enhancedMetricsConfig;
  /// &lt;p&gt;Sets the value of the GraphQL API to enable (&lt;code&gt;ENABLED&lt;/code&gt;) or disable (&lt;code&gt;DISABLED&lt;/code&gt;) introspection. If no value is provided, the introspection configuration will be set to &lt;code&gt;ENABLED&lt;/code&gt; by default. This field will produce an error if the operation attempts to use the introspection feature while this field is disabled.&lt;/p&gt; &lt;p&gt;For more information about introspection, see &lt;a href='https://graphql.org/learn/introspection/'&gt;GraphQL introspection&lt;/a&gt;.&lt;/p&gt;
  final pulumi.Input<GraphQLApiIntrospectionConfigEnumValueResponse>? introspectionConfig;
  /// &lt;p&gt;Configuration for Lambda function authorization.&lt;/p&gt;
  final pulumi.Input<LambdaAuthorizerConfigResponse>? lambdaAuthorizerConfig;
  /// &lt;p&gt;The Amazon CloudWatch Logs configuration.&lt;/p&gt;
  final pulumi.Input<LogConfigResponse>? logConfig;
  /// &lt;p&gt;The Identity and Access Management service role ARN for a merged API. The AppSync service assumes this role on behalf of the Merged API to validate access to source APIs at runtime and to prompt the &lt;code&gt;AUTO_MERGE&lt;/code&gt; to update the merged API endpoint with the source API changes automatically.&lt;/p&gt;
  final pulumi.Input<String>? mergedApiExecutionRoleArn;
  /// &lt;p&gt;The API name.&lt;/p&gt;
  final pulumi.Input<String>? name;
  /// &lt;p&gt;The OpenID Connect configuration.&lt;/p&gt;
  final pulumi.Input<OpenIDConnectConfigResponse>? openIDConnectConfig;
  /// &lt;p&gt;The account owner of the GraphQL API.&lt;/p&gt;
  final pulumi.Input<String>? owner;
  /// &lt;p&gt;The owner contact information for an API resource.&lt;/p&gt; &lt;p&gt;This field accepts any string input with a length of 0 - 256 characters.&lt;/p&gt;
  final pulumi.Input<String>? ownerContact;
  /// &lt;p&gt;The maximum depth a query can have in a single request. Depth refers to the amount of nested levels allowed in the body of query. The default value is &lt;code&gt;0&lt;/code&gt; (or unspecified), which indicates there's no depth limit. If you set a limit, it can be between &lt;code&gt;1&lt;/code&gt; and &lt;code&gt;75&lt;/code&gt; nested levels. This field will produce a limit error if the operation falls out of bounds.&lt;/p&gt; &lt;p&gt;Note that fields can still be set to nullable or non-nullable. If a non-nullable field produces an error, the error will be thrown upwards to the first nullable field available.&lt;/p&gt;
  final pulumi.Input<int>? queryDepthLimit;
  /// &lt;p&gt;The maximum number of resolvers that can be invoked in a single request. The default value is &lt;code&gt;0&lt;/code&gt; (or unspecified), which will set the limit to &lt;code&gt;10000&lt;/code&gt;. When specified, the limit value can be between &lt;code&gt;1&lt;/code&gt; and &lt;code&gt;10000&lt;/code&gt;. This field will produce a limit error if the operation falls out of bounds.&lt;/p&gt;
  final pulumi.Input<int>? resolverCountLimit;
  /// &lt;p&gt;The tags.&lt;/p&gt;
  final pulumi.Input<Map<String, String>>? tags;
  /// &lt;p&gt;The URIs.&lt;/p&gt;
  final pulumi.Input<Map<String, String>>? uris;
  /// &lt;p&gt;The Amazon Cognito user pool configuration.&lt;/p&gt;
  final pulumi.Input<UserPoolConfigResponse>? userPoolConfig;
  /// &lt;p&gt;Sets the value of the GraphQL API to public (&lt;code&gt;GLOBAL&lt;/code&gt;) or private (&lt;code&gt;PRIVATE&lt;/code&gt;). If no value is provided, the visibility will be set to &lt;code&gt;GLOBAL&lt;/code&gt; by default. This value cannot be changed once the API has been created.&lt;/p&gt;
  final pulumi.Input<GraphQLApiVisibilityEnumValueResponse>? visibility;
  /// &lt;p&gt;The ARN of the WAF access control list (ACL) associated with this &lt;code&gt;GraphqlApi&lt;/code&gt;, if one exists.&lt;/p&gt;
  final pulumi.Input<String>? wafWebAclArn;
  /// &lt;p&gt;A flag indicating whether to use X-Ray tracing for this &lt;code&gt;GraphqlApi&lt;/code&gt;.&lt;/p&gt;
  final pulumi.Input<bool>? xrayEnabled;

  /// Creates a new [AwsAppSyncGraphqlApiPropertiesResponse].
  /// [additionalAuthenticationProviders] &lt;p&gt;A list of additional authentication providers for the &lt;code&gt;GraphqlApi&lt;/code&gt; API.&lt;/p&gt;
  /// [apiId] &lt;p&gt;The API ID.&lt;/p&gt;
  /// [apiType] &lt;p&gt;The value that indicates whether the GraphQL API is a standard API (&lt;code&gt;GRAPHQL&lt;/code&gt;) or merged API (&lt;code&gt;MERGED&lt;/code&gt;).&lt;/p&gt;
  /// [arn] &lt;p&gt;The Amazon Resource Name (ARN).&lt;/p&gt;
  /// [authenticationType] &lt;p&gt;The authentication type.&lt;/p&gt;
  /// [dns] &lt;p&gt;The DNS records for the API.&lt;/p&gt;
  /// [enhancedMetricsConfig] &lt;p&gt;The &lt;code&gt;enhancedMetricsConfig&lt;/code&gt; object.&lt;/p&gt;
  /// [introspectionConfig] &lt;p&gt;Sets the value of the GraphQL API to enable (&lt;code&gt;ENABLED&lt;/code&gt;) or disable (&lt;code&gt;DISABLED&lt;/code&gt;) introspection. If no value is provided, the introspection configuration will be set to &lt;code&gt;ENABLED&lt;/code&gt; by default. This field will produce an error if the operation attempts to use the introspection feature while this field is disabled.&lt;/p&gt; &lt;p&gt;For more information about introspection, see &lt;a href='https://graphql.org/learn/introspection/'&gt;GraphQL introspection&lt;/a&gt;.&lt;/p&gt;
  /// [lambdaAuthorizerConfig] &lt;p&gt;Configuration for Lambda function authorization.&lt;/p&gt;
  /// [logConfig] &lt;p&gt;The Amazon CloudWatch Logs configuration.&lt;/p&gt;
  /// [mergedApiExecutionRoleArn] &lt;p&gt;The Identity and Access Management service role ARN for a merged API. The AppSync service assumes this role on behalf of the Merged API to validate access to source APIs at runtime and to prompt the &lt;code&gt;AUTO_MERGE&lt;/code&gt; to update the merged API endpoint with the source API changes automatically.&lt;/p&gt;
  /// [name] &lt;p&gt;The API name.&lt;/p&gt;
  /// [openIDConnectConfig] &lt;p&gt;The OpenID Connect configuration.&lt;/p&gt;
  /// [owner] &lt;p&gt;The account owner of the GraphQL API.&lt;/p&gt;
  /// [ownerContact] &lt;p&gt;The owner contact information for an API resource.&lt;/p&gt; &lt;p&gt;This field accepts any string input with a length of 0 - 256 characters.&lt;/p&gt;
  /// [queryDepthLimit] &lt;p&gt;The maximum depth a query can have in a single request. Depth refers to the amount of nested levels allowed in the body of query. The default value is &lt;code&gt;0&lt;/code&gt; (or unspecified), which indicates there's no depth limit. If you set a limit, it can be between &lt;code&gt;1&lt;/code&gt; and &lt;code&gt;75&lt;/code&gt; nested levels. This field will produce a limit error if the operation falls out of bounds.&lt;/p&gt; &lt;p&gt;Note that fields can still be set to nullable or non-nullable. If a non-nullable field produces an error, the error will be thrown upwards to the first nullable field available.&lt;/p&gt;
  /// [resolverCountLimit] &lt;p&gt;The maximum number of resolvers that can be invoked in a single request. The default value is &lt;code&gt;0&lt;/code&gt; (or unspecified), which will set the limit to &lt;code&gt;10000&lt;/code&gt;. When specified, the limit value can be between &lt;code&gt;1&lt;/code&gt; and &lt;code&gt;10000&lt;/code&gt;. This field will produce a limit error if the operation falls out of bounds.&lt;/p&gt;
  /// [tags] &lt;p&gt;The tags.&lt;/p&gt;
  /// [uris] &lt;p&gt;The URIs.&lt;/p&gt;
  /// [userPoolConfig] &lt;p&gt;The Amazon Cognito user pool configuration.&lt;/p&gt;
  /// [visibility] &lt;p&gt;Sets the value of the GraphQL API to public (&lt;code&gt;GLOBAL&lt;/code&gt;) or private (&lt;code&gt;PRIVATE&lt;/code&gt;). If no value is provided, the visibility will be set to &lt;code&gt;GLOBAL&lt;/code&gt; by default. This value cannot be changed once the API has been created.&lt;/p&gt;
  /// [wafWebAclArn] &lt;p&gt;The ARN of the WAF access control list (ACL) associated with this &lt;code&gt;GraphqlApi&lt;/code&gt;, if one exists.&lt;/p&gt;
  /// [xrayEnabled] &lt;p&gt;A flag indicating whether to use X-Ray tracing for this &lt;code&gt;GraphqlApi&lt;/code&gt;.&lt;/p&gt;
  const AwsAppSyncGraphqlApiPropertiesResponse({
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
      'additionalAuthenticationProviders': ?pulumi.Input.mapOptionalInputValue<List<AdditionalAuthenticationProviderResponse>, List<Map<String, dynamic>>>(additionalAuthenticationProviders, (value) => pulumi.Input.encodeList<AdditionalAuthenticationProviderResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiId': ?apiId,
      'apiType': ?pulumi.Input.mapOptionalInputValue<GraphQLApiTypeEnumValueResponse, Map<String, dynamic>>(apiType, (value) => value.toMap()),
      'arn': ?arn,
      'authenticationType': ?pulumi.Input.mapOptionalInputValue<AuthenticationTypeEnumValueResponse, Map<String, dynamic>>(authenticationType, (value) => value.toMap()),
      'dns': ?dns,
      'enhancedMetricsConfig': ?pulumi.Input.mapOptionalInputValue<EnhancedMetricsConfigResponse, Map<String, dynamic>>(enhancedMetricsConfig, (value) => value.toMap()),
      'introspectionConfig': ?pulumi.Input.mapOptionalInputValue<GraphQLApiIntrospectionConfigEnumValueResponse, Map<String, dynamic>>(introspectionConfig, (value) => value.toMap()),
      'lambdaAuthorizerConfig': ?pulumi.Input.mapOptionalInputValue<LambdaAuthorizerConfigResponse, Map<String, dynamic>>(lambdaAuthorizerConfig, (value) => value.toMap()),
      'logConfig': ?pulumi.Input.mapOptionalInputValue<LogConfigResponse, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'mergedApiExecutionRoleArn': ?mergedApiExecutionRoleArn,
      'name': ?name,
      'openIDConnectConfig': ?pulumi.Input.mapOptionalInputValue<OpenIDConnectConfigResponse, Map<String, dynamic>>(openIDConnectConfig, (value) => value.toMap()),
      'owner': ?owner,
      'ownerContact': ?ownerContact,
      'queryDepthLimit': ?queryDepthLimit,
      'resolverCountLimit': ?resolverCountLimit,
      'tags': ?tags,
      'uris': ?uris,
      'userPoolConfig': ?pulumi.Input.mapOptionalInputValue<UserPoolConfigResponse, Map<String, dynamic>>(userPoolConfig, (value) => value.toMap()),
      'visibility': ?pulumi.Input.mapOptionalInputValue<GraphQLApiVisibilityEnumValueResponse, Map<String, dynamic>>(visibility, (value) => value.toMap()),
      'wafWebAclArn': ?wafWebAclArn,
      'xrayEnabled': ?xrayEnabled,
    };
  }

  factory AwsAppSyncGraphqlApiPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsAppSyncGraphqlApiPropertiesResponse(
      additionalAuthenticationProviders: (() { final guardedValue = map['additionalAuthenticationProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AdditionalAuthenticationProviderResponse>(guardedValue, (value) => AdditionalAuthenticationProviderResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      apiId: (() { final guardedValue = map['apiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiType: (() { final guardedValue = map['apiType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GraphQLApiTypeEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthenticationTypeEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dns: (() { final guardedValue = map['dns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      enhancedMetricsConfig: (() { final guardedValue = map['enhancedMetricsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnhancedMetricsConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      introspectionConfig: (() { final guardedValue = map['introspectionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GraphQLApiIntrospectionConfigEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lambdaAuthorizerConfig: (() { final guardedValue = map['lambdaAuthorizerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LambdaAuthorizerConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logConfig: (() { final guardedValue = map['logConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mergedApiExecutionRoleArn: (() { final guardedValue = map['mergedApiExecutionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      openIDConnectConfig: (() { final guardedValue = map['openIDConnectConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenIDConnectConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerContact: (() { final guardedValue = map['ownerContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryDepthLimit: (() { final guardedValue = map['queryDepthLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resolverCountLimit: (() { final guardedValue = map['resolverCountLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      uris: (() { final guardedValue = map['uris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userPoolConfig: (() { final guardedValue = map['userPoolConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GraphQLApiVisibilityEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      wafWebAclArn: (() { final guardedValue = map['wafWebAclArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      xrayEnabled: (() { final guardedValue = map['xrayEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

