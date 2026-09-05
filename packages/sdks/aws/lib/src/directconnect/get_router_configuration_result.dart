// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_router_configuration_router.dart';

/// Result data returned by getRouterConfiguration.
class GetRouterConfigurationResult {
  /// Instructions for configuring your router
  final String? customerRouterConfig;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  /// Router type identifier
  final String? routerTypeIdentifier;
  /// Block of the router type details
  final List<GetRouterConfigurationRouter>? routers;
  final String? virtualInterfaceId;
  final String? virtualInterfaceName;

  /// Creates a new [GetRouterConfigurationResult].
  /// [customerRouterConfig] Instructions for configuring your router
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [routerTypeIdentifier] Router type identifier
  /// [routers] Block of the router type details
  /// [virtualInterfaceId] Optional.
  /// [virtualInterfaceName] Optional.
  const GetRouterConfigurationResult({
    this.customerRouterConfig,
    this.id,
    this.region,
    this.routerTypeIdentifier,
    this.routers,
    this.virtualInterfaceId,
    this.virtualInterfaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerRouterConfig': ?customerRouterConfig,
      'id': ?id,
      'region': ?region,
      'routerTypeIdentifier': ?routerTypeIdentifier,
      'routers': ?(() { final guardedValue = routers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRouterConfigurationRouter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'virtualInterfaceId': ?virtualInterfaceId,
      'virtualInterfaceName': ?virtualInterfaceName,
    };
  }

  factory GetRouterConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetRouterConfigurationResult(
      customerRouterConfig: (() { final guardedValue = map['customerRouterConfig']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routerTypeIdentifier: (() { final guardedValue = map['routerTypeIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routers: (() { final guardedValue = map['routers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRouterConfigurationRouter>(guardedValue, (value) => GetRouterConfigurationRouter.fromMap((value as Map).cast<String, dynamic>())); })(),
      virtualInterfaceId: (() { final guardedValue = map['virtualInterfaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualInterfaceName: (() { final guardedValue = map['virtualInterfaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
