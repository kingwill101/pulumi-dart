// ignore_for_file: unused_element, unnecessary_cast

import 'backend_subnet_configuration.dart';

/// Information regarding how the gateway should integrate with backend systems.
class BackendConfiguration {
  /// The default hostname of the data-plane gateway to which requests can be sent.
  final BackendSubnetConfiguration? subnet;

  /// Creates a new [BackendConfiguration].
  /// [subnet] The default hostname of the data-plane gateway to which requests can be sent.
  BackendConfiguration({
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory BackendConfiguration.fromMap(Map<String, dynamic> map) {
    return BackendConfiguration(
      subnet: map['subnet'] == null ? null : BackendSubnetConfiguration.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

