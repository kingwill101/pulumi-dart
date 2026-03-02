// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apm_reference_response.dart';
import 'gateway_api_metadata_properties_response.dart';
import 'gateway_cors_properties_response.dart';
import 'gateway_instance_response.dart';
import 'gateway_local_response_cache_per_instance_properties_response.dart';
import 'gateway_operator_properties_response.dart';
import 'gateway_properties_response_client_auth.dart';
import 'gateway_properties_response_environment_variables.dart';
import 'gateway_resource_requests_response.dart';
import 'sso_properties_response.dart';

/// Spring Cloud Gateway properties payload
class GatewayPropertiesResponse {
  /// Collection of addons for Spring Cloud Gateway
  final pulumi.Input<Map<String, dynamic>>? addonConfigs;
  /// API metadata property for Spring Cloud Gateway
  final pulumi.Input<GatewayApiMetadataPropertiesResponse>? apiMetadataProperties;
  /// Collection of APM type used in Spring Cloud Gateway
  final pulumi.Input<List<String>>? apmTypes;
  /// Collection of ApmReferences in service level
  final pulumi.Input<List<ApmReferenceResponse>>? apms;
  /// Client-Certification Authentication.
  final pulumi.Input<GatewayPropertiesResponseClientAuth>? clientAuth;
  /// Cross-Origin Resource Sharing property
  final pulumi.Input<GatewayCorsPropertiesResponse>? corsProperties;
  /// Environment variables of Spring Cloud Gateway
  final pulumi.Input<GatewayPropertiesResponseEnvironmentVariables>? environmentVariables;
  /// Indicate if only https is allowed.
  final pulumi.Input<bool>? httpsOnly;
  /// Collection of instances belong to Spring Cloud Gateway.
  final pulumi.Input<List<GatewayInstanceResponse>> instances;
  /// Properties of the Spring Cloud Gateway Operator.
  final pulumi.Input<GatewayOperatorPropertiesResponse> operatorProperties;
  /// State of the Spring Cloud Gateway.
  final pulumi.Input<String> provisioningState;
  /// Indicates whether the Spring Cloud Gateway exposes endpoint.
  final pulumi.Input<bool>? public;
  /// The requested resource quantity for required CPU and Memory.
  final pulumi.Input<GatewayResourceRequestsResponse>? resourceRequests;
  /// The properties to configure different types of response cache for Spring Cloud Gateway.
  final pulumi.Input<GatewayLocalResponseCachePerInstancePropertiesResponse>? responseCacheProperties;
  /// Single sign-on related configuration
  final pulumi.Input<SsoPropertiesResponse>? ssoProperties;
  /// URL of the Spring Cloud Gateway, exposed when 'public' is true.
  final pulumi.Input<String> url;

  /// Creates a new [GatewayPropertiesResponse].
  /// [addonConfigs] Collection of addons for Spring Cloud Gateway
  /// [apiMetadataProperties] API metadata property for Spring Cloud Gateway
  /// [apmTypes] Collection of APM type used in Spring Cloud Gateway
  /// [apms] Collection of ApmReferences in service level
  /// [clientAuth] Client-Certification Authentication.
  /// [corsProperties] Cross-Origin Resource Sharing property
  /// [environmentVariables] Environment variables of Spring Cloud Gateway
  /// [httpsOnly] Indicate if only https is allowed.
  /// [instances] Collection of instances belong to Spring Cloud Gateway.
  /// [operatorProperties] Properties of the Spring Cloud Gateway Operator.
  /// [provisioningState] State of the Spring Cloud Gateway.
  /// [public] Indicates whether the Spring Cloud Gateway exposes endpoint.
  /// [resourceRequests] The requested resource quantity for required CPU and Memory.
  /// [responseCacheProperties] The properties to configure different types of response cache for Spring Cloud Gateway.
  /// [ssoProperties] Single sign-on related configuration
  /// [url] URL of the Spring Cloud Gateway, exposed when 'public' is true.
  GatewayPropertiesResponse({
    this.addonConfigs,
    this.apiMetadataProperties,
    this.apmTypes,
    this.apms,
    this.clientAuth,
    this.corsProperties,
    this.environmentVariables,
    this.httpsOnly,
    required this.instances,
    required this.operatorProperties,
    required this.provisioningState,
    this.public,
    this.resourceRequests,
    this.responseCacheProperties,
    this.ssoProperties,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonConfigs': ?addonConfigs,
      'apiMetadataProperties': ?pulumi.Input.mapOptionalInputValue<GatewayApiMetadataPropertiesResponse, Map<String, dynamic>>(apiMetadataProperties, (value) => value.toMap()),
      'apmTypes': ?apmTypes,
      'apms': ?pulumi.Input.mapOptionalInputValue<List<ApmReferenceResponse>, List<Map<String, dynamic>>>(apms, (value) => pulumi.Input.encodeList<ApmReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientAuth': ?pulumi.Input.mapOptionalInputValue<GatewayPropertiesResponseClientAuth, Map<String, dynamic>>(clientAuth, (value) => value.toMap()),
      'corsProperties': ?pulumi.Input.mapOptionalInputValue<GatewayCorsPropertiesResponse, Map<String, dynamic>>(corsProperties, (value) => value.toMap()),
      'environmentVariables': ?pulumi.Input.mapOptionalInputValue<GatewayPropertiesResponseEnvironmentVariables, Map<String, dynamic>>(environmentVariables, (value) => value.toMap()),
      'httpsOnly': ?httpsOnly,
      'instances': pulumi.Input.mapInputValue<List<GatewayInstanceResponse>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<GatewayInstanceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operatorProperties': pulumi.Input.mapInputValue<GatewayOperatorPropertiesResponse, Map<String, dynamic>>(operatorProperties, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'public': ?public,
      'resourceRequests': ?pulumi.Input.mapOptionalInputValue<GatewayResourceRequestsResponse, Map<String, dynamic>>(resourceRequests, (value) => value.toMap()),
      'responseCacheProperties': ?pulumi.Input.mapOptionalInputValue<GatewayLocalResponseCachePerInstancePropertiesResponse, Map<String, dynamic>>(responseCacheProperties, (value) => value.toMap()),
      'ssoProperties': ?pulumi.Input.mapOptionalInputValue<SsoPropertiesResponse, Map<String, dynamic>>(ssoProperties, (value) => value.toMap()),
      'url': url,
    };
  }

  factory GatewayPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GatewayPropertiesResponse(
      addonConfigs: map['addonConfigs'] == null ? null : ((map['addonConfigs'] as Map).cast<String, dynamic>()).input(),
      apiMetadataProperties: map['apiMetadataProperties'] == null ? null : (GatewayApiMetadataPropertiesResponse.fromMap((map['apiMetadataProperties'] as Map).cast<String, dynamic>())).input(),
      apmTypes: map['apmTypes'] == null ? null : ((map['apmTypes'] as List).cast<String>()).input(),
      apms: map['apms'] == null ? null : (pulumi.Input.decodeList<ApmReferenceResponse>(map['apms'], (value) => ApmReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      clientAuth: map['clientAuth'] == null ? null : (GatewayPropertiesResponseClientAuth.fromMap((map['clientAuth'] as Map).cast<String, dynamic>())).input(),
      corsProperties: map['corsProperties'] == null ? null : (GatewayCorsPropertiesResponse.fromMap((map['corsProperties'] as Map).cast<String, dynamic>())).input(),
      environmentVariables: map['environmentVariables'] == null ? null : (GatewayPropertiesResponseEnvironmentVariables.fromMap((map['environmentVariables'] as Map).cast<String, dynamic>())).input(),
      httpsOnly: map['httpsOnly'] == null ? null : (map['httpsOnly'] as bool).input(),
      instances: (pulumi.Input.decodeList<GatewayInstanceResponse>(map['instances'], (value) => GatewayInstanceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      operatorProperties: (GatewayOperatorPropertiesResponse.fromMap((map['operatorProperties'] as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      public: map['public'] == null ? null : (map['public'] as bool).input(),
      resourceRequests: map['resourceRequests'] == null ? null : (GatewayResourceRequestsResponse.fromMap((map['resourceRequests'] as Map).cast<String, dynamic>())).input(),
      responseCacheProperties: map['responseCacheProperties'] == null ? null : (GatewayLocalResponseCachePerInstancePropertiesResponse.fromMap((map['responseCacheProperties'] as Map).cast<String, dynamic>())).input(),
      ssoProperties: map['ssoProperties'] == null ? null : (SsoPropertiesResponse.fromMap((map['ssoProperties'] as Map).cast<String, dynamic>())).input(),
      url: (map['url'] as String).input(),
    );
  }
}

