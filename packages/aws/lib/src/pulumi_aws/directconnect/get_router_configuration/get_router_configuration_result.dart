// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_router_configuration_router/get_router_configuration_router.dart';

/// Result data returned by getRouterConfiguration.
class GetRouterConfigurationResult {
  /// Instructions for configuring your router
  final String customerRouterConfig;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Router type identifier
  final String routerTypeIdentifier;

  /// Block of the router type details
  final List<GetRouterConfigurationRouter> routers;
  final String virtualInterfaceId;
  final String virtualInterfaceName;

  GetRouterConfigurationResult({
    required this.customerRouterConfig,
    required this.id,
    required this.region,
    required this.routerTypeIdentifier,
    required this.routers,
    required this.virtualInterfaceId,
    required this.virtualInterfaceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customerRouterConfig'] = customerRouterConfig;
    map['id'] = id;
    map['region'] = region;
    map['routerTypeIdentifier'] = routerTypeIdentifier;
    map['routers'] =
        Input.encodeList<GetRouterConfigurationRouter, Map<String, dynamic>>(
            routers, (value) => value.toMap());
    map['virtualInterfaceId'] = virtualInterfaceId;
    map['virtualInterfaceName'] = virtualInterfaceName;
    return map;
  }

  factory GetRouterConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetRouterConfigurationResult(
      customerRouterConfig: map['customerRouterConfig'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
      routerTypeIdentifier: map['routerTypeIdentifier'] as String,
      routers: Input.decodeList<GetRouterConfigurationRouter>(
          map['routers'],
          (value) => GetRouterConfigurationRouter.fromMap(
              (value as Map).cast<String, dynamic>())),
      virtualInterfaceId: map['virtualInterfaceId'] as String,
      virtualInterfaceName: map['virtualInterfaceName'] as String,
    );
  }
}
