// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_configuration_response.dart';
import 'origin_group_override_response.dart';

/// Defines the parameters for the route configuration override action.
class RouteConfigurationOverrideActionParametersResponse {
  /// The caching configuration associated with this rule. To disable caching, do not provide a cacheConfiguration object.
  final pulumi.Input<CacheConfigurationResponse>? cacheConfiguration;
  /// A reference to the origin group override configuration. Leave empty to use the default origin group on route.
  final pulumi.Input<OriginGroupOverrideResponse>? originGroupOverride;
  /// Expected value is 'DeliveryRuleRouteConfigurationOverrideActionParameters'.
  final pulumi.Input<String> typeName;

  /// Creates a new [RouteConfigurationOverrideActionParametersResponse].
  /// [cacheConfiguration] The caching configuration associated with this rule. To disable caching, do not provide a cacheConfiguration object.
  /// [originGroupOverride] A reference to the origin group override configuration. Leave empty to use the default origin group on route.
  /// [typeName] Expected value is 'DeliveryRuleRouteConfigurationOverrideActionParameters'.
  RouteConfigurationOverrideActionParametersResponse({
    this.cacheConfiguration,
    this.originGroupOverride,
    required this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheConfiguration': ?pulumi.Input.mapOptionalInputValue<CacheConfigurationResponse, Map<String, dynamic>>(cacheConfiguration, (value) => value.toMap()),
      'originGroupOverride': ?pulumi.Input.mapOptionalInputValue<OriginGroupOverrideResponse, Map<String, dynamic>>(originGroupOverride, (value) => value.toMap()),
      'typeName': typeName,
    };
  }

  factory RouteConfigurationOverrideActionParametersResponse.fromMap(Map<String, dynamic> map) {
    return RouteConfigurationOverrideActionParametersResponse(
      cacheConfiguration: map['cacheConfiguration'] == null ? null : (CacheConfigurationResponse.fromMap((map['cacheConfiguration']! as Map).cast<String, dynamic>())).input(),
      originGroupOverride: map['originGroupOverride'] == null ? null : (OriginGroupOverrideResponse.fromMap((map['originGroupOverride']! as Map).cast<String, dynamic>())).input(),
      typeName: (map['typeName'] as String).input(),
    );
  }
}

