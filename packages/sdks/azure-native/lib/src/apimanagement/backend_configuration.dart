// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_subnet_configuration.dart';

/// Information regarding how the gateway should integrate with backend systems.
class BackendConfiguration {
  /// The default hostname of the data-plane gateway to which requests can be sent.
  final pulumi.Input<BackendSubnetConfiguration?>? subnet;

  /// Creates a new [BackendConfiguration].
  /// [subnet] The default hostname of the data-plane gateway to which requests can be sent.
  const BackendConfiguration({
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnet': ?pulumi.Input.mapOptionalInputValue<BackendSubnetConfiguration, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory BackendConfiguration.fromMap(Map<String, dynamic> map) {
    return BackendConfiguration(
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendSubnetConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
