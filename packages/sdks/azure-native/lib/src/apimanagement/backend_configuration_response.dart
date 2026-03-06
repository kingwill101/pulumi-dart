// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_subnet_configuration_response.dart';

/// Information regarding how the gateway should integrate with backend systems.
class BackendConfigurationResponse {
  /// The default hostname of the data-plane gateway to which requests can be sent.
  final pulumi.Input<BackendSubnetConfigurationResponse>? subnet;

  /// Creates a new [BackendConfigurationResponse].
  /// [subnet] The default hostname of the data-plane gateway to which requests can be sent.
  const BackendConfigurationResponse({
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnet': ?pulumi.Input.mapOptionalInputValue<BackendSubnetConfigurationResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory BackendConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return BackendConfigurationResponse(
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendSubnetConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

