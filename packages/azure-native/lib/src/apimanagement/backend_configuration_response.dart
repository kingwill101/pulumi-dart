// ignore_for_file: unused_element, unnecessary_cast

import 'backend_subnet_configuration_response.dart';

/// Information regarding how the gateway should integrate with backend systems.
class BackendConfigurationResponse {
  /// The default hostname of the data-plane gateway to which requests can be sent.
  final BackendSubnetConfigurationResponse? subnet;

  /// Creates a new [BackendConfigurationResponse].
  /// [subnet] The default hostname of the data-plane gateway to which requests can be sent.
  BackendConfigurationResponse({
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory BackendConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return BackendConfigurationResponse(
      subnet: map['subnet'] == null ? null : BackendSubnetConfigurationResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

