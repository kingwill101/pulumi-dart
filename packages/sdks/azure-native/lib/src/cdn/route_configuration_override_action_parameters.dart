// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_configuration.dart';
import 'origin_group_override.dart';

/// Defines the parameters for the route configuration override action.
class RouteConfigurationOverrideActionParameters {
  /// The caching configuration associated with this rule. To disable caching, do not provide a cacheConfiguration object.
  final pulumi.Input<CacheConfiguration>? cacheConfiguration;
  /// A reference to the origin group override configuration. Leave empty to use the default origin group on route.
  final pulumi.Input<OriginGroupOverride>? originGroupOverride;
  /// Expected value is 'DeliveryRuleRouteConfigurationOverrideActionParameters'.
  final pulumi.Input<String> typeName;

  /// Creates a new [RouteConfigurationOverrideActionParameters].
  /// [cacheConfiguration] The caching configuration associated with this rule. To disable caching, do not provide a cacheConfiguration object.
  /// [originGroupOverride] A reference to the origin group override configuration. Leave empty to use the default origin group on route.
  /// [typeName] Expected value is 'DeliveryRuleRouteConfigurationOverrideActionParameters'.
  const RouteConfigurationOverrideActionParameters({
    this.cacheConfiguration,
    this.originGroupOverride,
    required this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheConfiguration': ?pulumi.Input.mapOptionalInputValue<CacheConfiguration, Map<String, dynamic>>(cacheConfiguration, (value) => value.toMap()),
      'originGroupOverride': ?pulumi.Input.mapOptionalInputValue<OriginGroupOverride, Map<String, dynamic>>(originGroupOverride, (value) => value.toMap()),
      'typeName': typeName,
    };
  }

  factory RouteConfigurationOverrideActionParameters.fromMap(Map<String, dynamic> map) {
    return RouteConfigurationOverrideActionParameters(
      cacheConfiguration: (() { final guardedValue = map['cacheConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      originGroupOverride: (() { final guardedValue = map['originGroupOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OriginGroupOverride.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      typeName: pulumi.Input.fromValue(map['typeName'] as String),
    );
  }
}
