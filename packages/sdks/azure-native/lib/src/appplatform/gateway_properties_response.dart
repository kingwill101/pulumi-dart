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
  final Map<String, dynamic>? addonConfigs;
  /// API metadata property for Spring Cloud Gateway
  final GatewayApiMetadataPropertiesResponse? apiMetadataProperties;
  /// Collection of APM type used in Spring Cloud Gateway
  final List<String>? apmTypes;
  /// Collection of ApmReferences in service level
  final List<ApmReferenceResponse>? apms;
  /// Client-Certification Authentication.
  final GatewayPropertiesResponseClientAuth? clientAuth;
  /// Cross-Origin Resource Sharing property
  final GatewayCorsPropertiesResponse? corsProperties;
  /// Environment variables of Spring Cloud Gateway
  final GatewayPropertiesResponseEnvironmentVariables? environmentVariables;
  /// Indicate if only https is allowed.
  final bool? httpsOnly;
  /// Collection of instances belong to Spring Cloud Gateway.
  final List<GatewayInstanceResponse> instances;
  /// Properties of the Spring Cloud Gateway Operator.
  final GatewayOperatorPropertiesResponse operatorProperties;
  /// State of the Spring Cloud Gateway.
  final String provisioningState;
  /// Indicates whether the Spring Cloud Gateway exposes endpoint.
  final bool? public;
  /// The requested resource quantity for required CPU and Memory.
  final GatewayResourceRequestsResponse? resourceRequests;
  /// The properties to configure different types of response cache for Spring Cloud Gateway.
  final GatewayLocalResponseCachePerInstancePropertiesResponse? responseCacheProperties;
  /// Single sign-on related configuration
  final SsoPropertiesResponse? ssoProperties;
  /// URL of the Spring Cloud Gateway, exposed when 'public' is true.
  final String url;

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
      'apiMetadataProperties': ?apiMetadataProperties == null ? null : apiMetadataProperties!.toMap(),
      'apmTypes': ?apmTypes,
      'apms': ?apms == null ? null : pulumi.Input.encodeList<ApmReferenceResponse, Map<String, dynamic>>(apms!, (value) => value.toMap()),
      'clientAuth': ?clientAuth == null ? null : clientAuth!.toMap(),
      'corsProperties': ?corsProperties == null ? null : corsProperties!.toMap(),
      'environmentVariables': ?environmentVariables == null ? null : environmentVariables!.toMap(),
      'httpsOnly': ?httpsOnly,
      'instances': pulumi.Input.encodeList<GatewayInstanceResponse, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'operatorProperties': operatorProperties.toMap(),
      'provisioningState': provisioningState,
      'public': ?public,
      'resourceRequests': ?resourceRequests == null ? null : resourceRequests!.toMap(),
      'responseCacheProperties': ?responseCacheProperties == null ? null : responseCacheProperties!.toMap(),
      'ssoProperties': ?ssoProperties == null ? null : ssoProperties!.toMap(),
      'url': url,
    };
  }

  factory GatewayPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GatewayPropertiesResponse(
      addonConfigs: map['addonConfigs'] == null ? null : (map['addonConfigs'] as Map).cast<String, dynamic>(),
      apiMetadataProperties: map['apiMetadataProperties'] == null ? null : GatewayApiMetadataPropertiesResponse.fromMap((map['apiMetadataProperties'] as Map).cast<String, dynamic>()),
      apmTypes: map['apmTypes'] == null ? null : (map['apmTypes'] as List).cast<String>(),
      apms: map['apms'] == null ? null : pulumi.Input.decodeList<ApmReferenceResponse>(map['apms'], (value) => ApmReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      clientAuth: map['clientAuth'] == null ? null : GatewayPropertiesResponseClientAuth.fromMap((map['clientAuth'] as Map).cast<String, dynamic>()),
      corsProperties: map['corsProperties'] == null ? null : GatewayCorsPropertiesResponse.fromMap((map['corsProperties'] as Map).cast<String, dynamic>()),
      environmentVariables: map['environmentVariables'] == null ? null : GatewayPropertiesResponseEnvironmentVariables.fromMap((map['environmentVariables'] as Map).cast<String, dynamic>()),
      httpsOnly: map['httpsOnly'] == null ? null : map['httpsOnly'] as bool,
      instances: pulumi.Input.decodeList<GatewayInstanceResponse>(map['instances'], (value) => GatewayInstanceResponse.fromMap((value as Map).cast<String, dynamic>())),
      operatorProperties: GatewayOperatorPropertiesResponse.fromMap((map['operatorProperties'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      public: map['public'] == null ? null : map['public'] as bool,
      resourceRequests: map['resourceRequests'] == null ? null : GatewayResourceRequestsResponse.fromMap((map['resourceRequests'] as Map).cast<String, dynamic>()),
      responseCacheProperties: map['responseCacheProperties'] == null ? null : GatewayLocalResponseCachePerInstancePropertiesResponse.fromMap((map['responseCacheProperties'] as Map).cast<String, dynamic>()),
      ssoProperties: map['ssoProperties'] == null ? null : SsoPropertiesResponse.fromMap((map['ssoProperties'] as Map).cast<String, dynamic>()),
      url: map['url'] as String,
    );
  }
}

