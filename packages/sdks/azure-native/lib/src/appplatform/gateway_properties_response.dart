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
      addonConfigs: (() { final guardedValue = map['addonConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      apiMetadataProperties: (() { final guardedValue = map['apiMetadataProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayApiMetadataPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      apmTypes: (() { final guardedValue = map['apmTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      apms: (() { final guardedValue = map['apms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApmReferenceResponse>(guardedValue, (value) => ApmReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clientAuth: (() { final guardedValue = map['clientAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayPropertiesResponseClientAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      corsProperties: (() { final guardedValue = map['corsProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayCorsPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayPropertiesResponseEnvironmentVariables.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpsOnly: (() { final guardedValue = map['httpsOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instances: pulumi.Input.fromValue(pulumi.Input.decodeList<GatewayInstanceResponse>(map['instances']!, (value) => GatewayInstanceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      operatorProperties: pulumi.Input.fromValue(GatewayOperatorPropertiesResponse.fromMap((map['operatorProperties']! as Map).cast<String, dynamic>())),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      public: (() { final guardedValue = map['public']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceRequests: (() { final guardedValue = map['resourceRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayResourceRequestsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      responseCacheProperties: (() { final guardedValue = map['responseCacheProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayLocalResponseCachePerInstancePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ssoProperties: (() { final guardedValue = map['ssoProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SsoPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

