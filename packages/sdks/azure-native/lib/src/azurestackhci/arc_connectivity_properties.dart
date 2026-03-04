// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_configuration.dart';

/// Connectivity related configuration required by arc server.
class ArcConnectivityProperties {
  /// True indicates ARC connectivity is enabled
  final pulumi.Input<bool>? enabled;

  /// Service configurations associated with the connectivity resource. They are only processed by the server if 'enabled' property is set to 'true'.
  final pulumi.Input<List<ServiceConfiguration>>? serviceConfigurations;

  /// Creates a new [ArcConnectivityProperties].
  /// [enabled] True indicates ARC connectivity is enabled
  /// [serviceConfigurations] Service configurations associated with the connectivity resource. They are only processed by the server if 'enabled' property is set to 'true'.
  ArcConnectivityProperties({this.enabled, this.serviceConfigurations});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'serviceConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<ServiceConfiguration>,
            List<Map<String, dynamic>>
          >(
            serviceConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  ServiceConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ArcConnectivityProperties.fromMap(Map<String, dynamic> map) {
    return ArcConnectivityProperties(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      serviceConfigurations: (() {
        final guardedValue = map['serviceConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ServiceConfiguration>(
            guardedValue,
            (value) => ServiceConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
