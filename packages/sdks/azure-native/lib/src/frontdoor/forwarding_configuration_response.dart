// ignore_for_file: unused_element, unnecessary_cast

import 'cache_configuration_response.dart';
import 'sub_resource_response.dart';

/// Describes Forwarding Route.
class ForwardingConfigurationResponse {
  /// A reference to the BackendPool which this rule routes to.
  final SubResourceResponse? backendPool;
  /// The caching configuration associated with this rule.
  final CacheConfigurationResponse? cacheConfiguration;
  /// A custom path used to rewrite resource paths matched by this rule. Leave empty to use incoming path.
  final String? customForwardingPath;
  /// Protocol this rule will use when forwarding traffic to backends.
  final String? forwardingProtocol;
  /// Expected value is '#Microsoft.Azure.FrontDoor.Models.FrontdoorForwardingConfiguration'.
  final String odataType;

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
      'backendPool': ?backendPool == null ? null : backendPool!.toMap(),
      'cacheConfiguration': ?cacheConfiguration == null ? null : cacheConfiguration!.toMap(),
      'customForwardingPath': ?customForwardingPath,
      'forwardingProtocol': ?forwardingProtocol,
      'odataType': odataType,
    };
  }

  factory ForwardingConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ForwardingConfigurationResponse(
      backendPool: map['backendPool'] == null ? null : SubResourceResponse.fromMap((map['backendPool'] as Map).cast<String, dynamic>()),
      cacheConfiguration: map['cacheConfiguration'] == null ? null : CacheConfigurationResponse.fromMap((map['cacheConfiguration'] as Map).cast<String, dynamic>()),
      customForwardingPath: map['customForwardingPath'] == null ? null : map['customForwardingPath'] as String,
      forwardingProtocol: map['forwardingProtocol'] == null ? null : map['forwardingProtocol'] as String,
      odataType: map['odataType'] as String,
    );
  }
}

