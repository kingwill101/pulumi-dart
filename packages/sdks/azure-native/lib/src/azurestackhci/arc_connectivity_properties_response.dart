// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_configuration_response.dart';

/// Connectivity related configuration required by arc server.
class ArcConnectivityPropertiesResponse {
  /// True indicates ARC connectivity is enabled
  final pulumi.Input<bool>? enabled;
  /// Service configurations associated with the connectivity resource. They are only processed by the server if 'enabled' property is set to 'true'.
  final pulumi.Input<List<ServiceConfigurationResponse>>? serviceConfigurations;

  /// Creates a new [ArcConnectivityPropertiesResponse].
  /// [enabled] True indicates ARC connectivity is enabled
  /// [serviceConfigurations] Service configurations associated with the connectivity resource. They are only processed by the server if 'enabled' property is set to 'true'.
  ArcConnectivityPropertiesResponse({
    this.enabled,
    this.serviceConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'serviceConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ServiceConfigurationResponse>, List<Map<String, dynamic>>>(serviceConfigurations, (value) => pulumi.Input.encodeList<ServiceConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ArcConnectivityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ArcConnectivityPropertiesResponse(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      serviceConfigurations: map['serviceConfigurations'] == null ? null : (pulumi.Input.decodeList<ServiceConfigurationResponse>(map['serviceConfigurations'], (value) => ServiceConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

