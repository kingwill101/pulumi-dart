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
      addonConfigs: map['addonConfigs'] == null ? null : ((map['addonConfigs'] as Map).cast<String, dynamic>()).input(),
      apiMetadataProperties: map['apiMetadataProperties'] == null ? null : (GatewayApiMetadataProperties.fromMap((map['apiMetadataProperties'] as Map).cast<String, dynamic>())).input(),
      apmTypes: map['apmTypes'] == null ? null : ((map['apmTypes'] as List).cast<String>()).input(),
      apms: map['apms'] == null ? null : (pulumi.Input.decodeList<ApmReference>(map['apms'], (value) => ApmReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      clientAuth: map['clientAuth'] == null ? null : (GatewayPropertiesClientAuth.fromMap((map['clientAuth'] as Map).cast<String, dynamic>())).input(),
      corsProperties: map['corsProperties'] == null ? null : (GatewayCorsProperties.fromMap((map['corsProperties'] as Map).cast<String, dynamic>())).input(),
      environmentVariables: map['environmentVariables'] == null ? null : (GatewayPropertiesEnvironmentVariables.fromMap((map['environmentVariables'] as Map).cast<String, dynamic>())).input(),
      httpsOnly: map['httpsOnly'] == null ? null : (map['httpsOnly'] as bool).input(),
      public: map['public'] == null ? null : (map['public'] as bool).input(),
      resourceRequests: map['resourceRequests'] == null ? null : (GatewayResourceRequests.fromMap((map['resourceRequests'] as Map).cast<String, dynamic>())).input(),
      responseCacheProperties: map['responseCacheProperties'] == null ? null : (GatewayLocalResponseCachePerInstanceProperties.fromMap((map['responseCacheProperties'] as Map).cast<String, dynamic>())).input(),
      ssoProperties: map['ssoProperties'] == null ? null : (SsoProperties.fromMap((map['ssoProperties'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

