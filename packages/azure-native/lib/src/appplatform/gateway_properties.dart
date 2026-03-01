// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apm_reference.dart';
import 'gateway_api_metadata_properties.dart';
import 'gateway_cors_properties.dart';
import 'gateway_local_response_cache_per_instance_properties.dart';
import 'gateway_properties_client_auth.dart';
import 'gateway_properties_environment_variables.dart';
import 'gateway_resource_requests.dart';
import 'sso_properties.dart';

/// Spring Cloud Gateway properties payload
class GatewayProperties {
  /// Collection of addons for Spring Cloud Gateway
  final Map<String, dynamic>? addonConfigs;
  /// API metadata property for Spring Cloud Gateway
  final GatewayApiMetadataProperties? apiMetadataProperties;
  /// Collection of APM type used in Spring Cloud Gateway
  final List<String>? apmTypes;
  /// Collection of ApmReferences in service level
  final List<ApmReference>? apms;
  /// Client-Certification Authentication.
  final GatewayPropertiesClientAuth? clientAuth;
  /// Cross-Origin Resource Sharing property
  final GatewayCorsProperties? corsProperties;
  /// Environment variables of Spring Cloud Gateway
  final GatewayPropertiesEnvironmentVariables? environmentVariables;
  /// Indicate if only https is allowed.
  final bool? httpsOnly;
  /// Indicates whether the Spring Cloud Gateway exposes endpoint.
  final bool? public;
  /// The requested resource quantity for required CPU and Memory.
  final GatewayResourceRequests? resourceRequests;
  /// The properties to configure different types of response cache for Spring Cloud Gateway.
  final GatewayLocalResponseCachePerInstanceProperties? responseCacheProperties;
  /// Single sign-on related configuration
  final SsoProperties? ssoProperties;

  /// Creates a new [GatewayProperties].
  /// [addonConfigs] Collection of addons for Spring Cloud Gateway
  /// [apiMetadataProperties] API metadata property for Spring Cloud Gateway
  /// [apmTypes] Collection of APM type used in Spring Cloud Gateway
  /// [apms] Collection of ApmReferences in service level
  /// [clientAuth] Client-Certification Authentication.
  /// [corsProperties] Cross-Origin Resource Sharing property
  /// [environmentVariables] Environment variables of Spring Cloud Gateway
  /// [httpsOnly] Indicate if only https is allowed.
  /// [public] Indicates whether the Spring Cloud Gateway exposes endpoint.
  /// [resourceRequests] The requested resource quantity for required CPU and Memory.
  /// [responseCacheProperties] The properties to configure different types of response cache for Spring Cloud Gateway.
  /// [ssoProperties] Single sign-on related configuration
  GatewayProperties({
    this.addonConfigs,
    this.apiMetadataProperties,
    this.apmTypes,
    this.apms,
    this.clientAuth,
    this.corsProperties,
    this.environmentVariables,
    this.httpsOnly,
    this.public,
    this.resourceRequests,
    this.responseCacheProperties,
    this.ssoProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonConfigs': ?addonConfigs,
      'apiMetadataProperties': ?apiMetadataProperties == null ? null : apiMetadataProperties!.toMap(),
      'apmTypes': ?apmTypes,
      'apms': ?apms == null ? null : pulumi.Input.encodeList<ApmReference, Map<String, dynamic>>(apms!, (value) => value.toMap()),
      'clientAuth': ?clientAuth == null ? null : clientAuth!.toMap(),
      'corsProperties': ?corsProperties == null ? null : corsProperties!.toMap(),
      'environmentVariables': ?environmentVariables == null ? null : environmentVariables!.toMap(),
      'httpsOnly': ?httpsOnly,
      'public': ?public,
      'resourceRequests': ?resourceRequests == null ? null : resourceRequests!.toMap(),
      'responseCacheProperties': ?responseCacheProperties == null ? null : responseCacheProperties!.toMap(),
      'ssoProperties': ?ssoProperties == null ? null : ssoProperties!.toMap(),
    };
  }

  factory GatewayProperties.fromMap(Map<String, dynamic> map) {
    return GatewayProperties(
      addonConfigs: map['addonConfigs'] == null ? null : (map['addonConfigs'] as Map).cast<String, dynamic>(),
      apiMetadataProperties: map['apiMetadataProperties'] == null ? null : GatewayApiMetadataProperties.fromMap((map['apiMetadataProperties'] as Map).cast<String, dynamic>()),
      apmTypes: map['apmTypes'] == null ? null : (map['apmTypes'] as List).cast<String>(),
      apms: map['apms'] == null ? null : pulumi.Input.decodeList<ApmReference>(map['apms'], (value) => ApmReference.fromMap((value as Map).cast<String, dynamic>())),
      clientAuth: map['clientAuth'] == null ? null : GatewayPropertiesClientAuth.fromMap((map['clientAuth'] as Map).cast<String, dynamic>()),
      corsProperties: map['corsProperties'] == null ? null : GatewayCorsProperties.fromMap((map['corsProperties'] as Map).cast<String, dynamic>()),
      environmentVariables: map['environmentVariables'] == null ? null : GatewayPropertiesEnvironmentVariables.fromMap((map['environmentVariables'] as Map).cast<String, dynamic>()),
      httpsOnly: map['httpsOnly'] == null ? null : map['httpsOnly'] as bool,
      public: map['public'] == null ? null : map['public'] as bool,
      resourceRequests: map['resourceRequests'] == null ? null : GatewayResourceRequests.fromMap((map['resourceRequests'] as Map).cast<String, dynamic>()),
      responseCacheProperties: map['responseCacheProperties'] == null ? null : GatewayLocalResponseCachePerInstanceProperties.fromMap((map['responseCacheProperties'] as Map).cast<String, dynamic>()),
      ssoProperties: map['ssoProperties'] == null ? null : SsoProperties.fromMap((map['ssoProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

