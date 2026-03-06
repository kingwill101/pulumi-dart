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
  final pulumi.Input<Map<String, dynamic>>? addonConfigs;
  /// API metadata property for Spring Cloud Gateway
  final pulumi.Input<GatewayApiMetadataProperties>? apiMetadataProperties;
  /// Collection of APM type used in Spring Cloud Gateway
  final pulumi.Input<List<String>>? apmTypes;
  /// Collection of ApmReferences in service level
  final pulumi.Input<List<ApmReference>>? apms;
  /// Client-Certification Authentication.
  final pulumi.Input<GatewayPropertiesClientAuth>? clientAuth;
  /// Cross-Origin Resource Sharing property
  final pulumi.Input<GatewayCorsProperties>? corsProperties;
  /// Environment variables of Spring Cloud Gateway
  final pulumi.Input<GatewayPropertiesEnvironmentVariables>? environmentVariables;
  /// Indicate if only https is allowed.
  final pulumi.Input<bool>? httpsOnly;
  /// Indicates whether the Spring Cloud Gateway exposes endpoint.
  final pulumi.Input<bool>? public;
  /// The requested resource quantity for required CPU and Memory.
  final pulumi.Input<GatewayResourceRequests>? resourceRequests;
  /// The properties to configure different types of response cache for Spring Cloud Gateway.
  final pulumi.Input<GatewayLocalResponseCachePerInstanceProperties>? responseCacheProperties;
  /// Single sign-on related configuration
  final pulumi.Input<SsoProperties>? ssoProperties;

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
  const GatewayProperties({
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
      'apiMetadataProperties': ?pulumi.Input.mapOptionalInputValue<GatewayApiMetadataProperties, Map<String, dynamic>>(apiMetadataProperties, (value) => value.toMap()),
      'apmTypes': ?apmTypes,
      'apms': ?pulumi.Input.mapOptionalInputValue<List<ApmReference>, List<Map<String, dynamic>>>(apms, (value) => pulumi.Input.encodeList<ApmReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientAuth': ?pulumi.Input.mapOptionalInputValue<GatewayPropertiesClientAuth, Map<String, dynamic>>(clientAuth, (value) => value.toMap()),
      'corsProperties': ?pulumi.Input.mapOptionalInputValue<GatewayCorsProperties, Map<String, dynamic>>(corsProperties, (value) => value.toMap()),
      'environmentVariables': ?pulumi.Input.mapOptionalInputValue<GatewayPropertiesEnvironmentVariables, Map<String, dynamic>>(environmentVariables, (value) => value.toMap()),
      'httpsOnly': ?httpsOnly,
      'public': ?public,
      'resourceRequests': ?pulumi.Input.mapOptionalInputValue<GatewayResourceRequests, Map<String, dynamic>>(resourceRequests, (value) => value.toMap()),
      'responseCacheProperties': ?pulumi.Input.mapOptionalInputValue<GatewayLocalResponseCachePerInstanceProperties, Map<String, dynamic>>(responseCacheProperties, (value) => value.toMap()),
      'ssoProperties': ?pulumi.Input.mapOptionalInputValue<SsoProperties, Map<String, dynamic>>(ssoProperties, (value) => value.toMap()),
    };
  }

  factory GatewayProperties.fromMap(Map<String, dynamic> map) {
    return GatewayProperties(
      addonConfigs: (() { final guardedValue = map['addonConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      apiMetadataProperties: (() { final guardedValue = map['apiMetadataProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayApiMetadataProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      apmTypes: (() { final guardedValue = map['apmTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      apms: (() { final guardedValue = map['apms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApmReference>(guardedValue, (value) => ApmReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clientAuth: (() { final guardedValue = map['clientAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayPropertiesClientAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      corsProperties: (() { final guardedValue = map['corsProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayCorsProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayPropertiesEnvironmentVariables.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpsOnly: (() { final guardedValue = map['httpsOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      public: (() { final guardedValue = map['public']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceRequests: (() { final guardedValue = map['resourceRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayResourceRequests.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      responseCacheProperties: (() { final guardedValue = map['responseCacheProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayLocalResponseCachePerInstanceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ssoProperties: (() { final guardedValue = map['ssoProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SsoProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

