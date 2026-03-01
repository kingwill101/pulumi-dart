// ignore_for_file: unused_element, unnecessary_cast

import 'cache_configuration.dart';
import 'origin_group_override.dart';

/// Defines the parameters for the route configuration override action.
class RouteConfigurationOverrideActionParameters {
  /// The caching configuration associated with this rule. To disable caching, do not provide a cacheConfiguration object.
  final CacheConfiguration? cacheConfiguration;
  /// A reference to the origin group override configuration. Leave empty to use the default origin group on route.
  final OriginGroupOverride? originGroupOverride;
  /// Expected value is 'DeliveryRuleRouteConfigurationOverrideActionParameters'.
  final String typeName;

  /// Creates a new [RouteConfigurationOverrideActionParameters].
  /// [cacheConfiguration] The caching configuration associated with this rule. To disable caching, do not provide a cacheConfiguration object.
  /// [originGroupOverride] A reference to the origin group override configuration. Leave empty to use the default origin group on route.
  /// [typeName] Expected value is 'DeliveryRuleRouteConfigurationOverrideActionParameters'.
  RouteConfigurationOverrideActionParameters({
    this.cacheConfiguration,
    this.originGroupOverride,
    required this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheConfiguration': ?cacheConfiguration == null ? null : cacheConfiguration!.toMap(),
      'originGroupOverride': ?originGroupOverride == null ? null : originGroupOverride!.toMap(),
      'typeName': typeName,
    };
  }

  factory RouteConfigurationOverrideActionParameters.fromMap(Map<String, dynamic> map) {
    return RouteConfigurationOverrideActionParameters(
      cacheConfiguration: map['cacheConfiguration'] == null ? null : CacheConfiguration.fromMap((map['cacheConfiguration'] as Map).cast<String, dynamic>()),
      originGroupOverride: map['originGroupOverride'] == null ? null : OriginGroupOverride.fromMap((map['originGroupOverride'] as Map).cast<String, dynamic>()),
      typeName: map['typeName'] as String,
    );
  }
}

