// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_configuration_response.dart';
import 'sub_resource_response.dart';

/// Describes Forwarding Route.
class ForwardingConfigurationResponse {
  /// A reference to the BackendPool which this rule routes to.
  final pulumi.Input<SubResourceResponse>? backendPool;

  /// The caching configuration associated with this rule.
  final pulumi.Input<CacheConfigurationResponse>? cacheConfiguration;

  /// A custom path used to rewrite resource paths matched by this rule. Leave empty to use incoming path.
  final pulumi.Input<String>? customForwardingPath;

  /// Protocol this rule will use when forwarding traffic to backends.
  final pulumi.Input<String>? forwardingProtocol;

  /// Expected value is '#Microsoft.Azure.FrontDoor.Models.FrontdoorForwardingConfiguration'.
  final pulumi.Input<String> odataType;

  /// Creates a new [ForwardingConfigurationResponse].
  /// [backendPool] A reference to the BackendPool which this rule routes to.
  /// [cacheConfiguration] The caching configuration associated with this rule.
  /// [customForwardingPath] A custom path used to rewrite resource paths matched by this rule. Leave empty to use incoming path.
  /// [forwardingProtocol] Protocol this rule will use when forwarding traffic to backends.
  /// [odataType] Expected value is '#Microsoft.Azure.FrontDoor.Models.FrontdoorForwardingConfiguration'.
  ForwardingConfigurationResponse({
    this.backendPool,
    this.cacheConfiguration,
    this.customForwardingPath,
    this.forwardingProtocol,
    required this.odataType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPool':
          ?pulumi.Input.mapOptionalInputValue<
            SubResourceResponse,
            Map<String, dynamic>
          >(backendPool, (value) => value.toMap()),
      'cacheConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            CacheConfigurationResponse,
            Map<String, dynamic>
          >(cacheConfiguration, (value) => value.toMap()),
      'customForwardingPath': ?customForwardingPath,
      'forwardingProtocol': ?forwardingProtocol,
      'odataType': odataType,
    };
  }

  factory ForwardingConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ForwardingConfigurationResponse(
      backendPool: (() {
        final guardedValue = map['backendPool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResourceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      cacheConfiguration: (() {
        final guardedValue = map['cacheConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CacheConfigurationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      customForwardingPath: (() {
        final guardedValue = map['customForwardingPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      forwardingProtocol: (() {
        final guardedValue = map['forwardingProtocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      odataType: pulumi.Input.fromValue(map['odataType'] as String),
    );
  }
}
