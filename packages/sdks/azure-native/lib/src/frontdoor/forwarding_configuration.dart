// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_configuration.dart';
import 'sub_resource.dart';

/// Describes Forwarding Route.
class ForwardingConfiguration {
  /// A reference to the BackendPool which this rule routes to.
  final pulumi.Input<SubResource>? backendPool;
  /// The caching configuration associated with this rule.
  final pulumi.Input<CacheConfiguration>? cacheConfiguration;
  /// A custom path used to rewrite resource paths matched by this rule. Leave empty to use incoming path.
  final pulumi.Input<String>? customForwardingPath;
  /// Protocol this rule will use when forwarding traffic to backends.
  final pulumi.Input<String>? forwardingProtocol;
  /// Expected value is '#Microsoft.Azure.FrontDoor.Models.FrontdoorForwardingConfiguration'.
  final pulumi.Input<String> odataType;

  /// Creates a new [ForwardingConfiguration].
  /// [backendPool] A reference to the BackendPool which this rule routes to.
  /// [cacheConfiguration] The caching configuration associated with this rule.
  /// [customForwardingPath] A custom path used to rewrite resource paths matched by this rule. Leave empty to use incoming path.
  /// [forwardingProtocol] Protocol this rule will use when forwarding traffic to backends.
  /// [odataType] Expected value is '#Microsoft.Azure.FrontDoor.Models.FrontdoorForwardingConfiguration'.
  ForwardingConfiguration({
    this.backendPool,
    this.cacheConfiguration,
    this.customForwardingPath,
    this.forwardingProtocol,
    required this.odataType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPool': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(backendPool, (value) => value.toMap()),
      'cacheConfiguration': ?pulumi.Input.mapOptionalInputValue<CacheConfiguration, Map<String, dynamic>>(cacheConfiguration, (value) => value.toMap()),
      'customForwardingPath': ?customForwardingPath,
      'forwardingProtocol': ?forwardingProtocol,
      'odataType': odataType,
    };
  }

  factory ForwardingConfiguration.fromMap(Map<String, dynamic> map) {
    return ForwardingConfiguration(
      backendPool: (() { final guardedValue = map['backendPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cacheConfiguration: (() { final guardedValue = map['cacheConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customForwardingPath: (() { final guardedValue = map['customForwardingPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forwardingProtocol: (() { final guardedValue = map['forwardingProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odataType: pulumi.Input.fromValue(map['odataType'] as String),
    );
  }
}

