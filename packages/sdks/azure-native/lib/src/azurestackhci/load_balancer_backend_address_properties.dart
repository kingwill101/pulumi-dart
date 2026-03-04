// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipconfiguration_arm_reference.dart';

/// LoadBalancer Backend Address properties
class LoadBalancerBackendAddressProperties {
  /// admin state - if set to false, the address is removed from the pool
  final pulumi.Input<String>? adminState;

  /// Nic Based backend-ip association
  final pulumi.Input<IPConfigurationArmReference>?
  networkInterfaceIPConfiguration;

  /// Creates a new [LoadBalancerBackendAddressProperties].
  /// [adminState] admin state - if set to false, the address is removed from the pool
  /// [networkInterfaceIPConfiguration] Nic Based backend-ip association
  LoadBalancerBackendAddressProperties({
    this.adminState,
    this.networkInterfaceIPConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminState': ?adminState,
      'networkInterfaceIPConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            IPConfigurationArmReference,
            Map<String, dynamic>
          >(networkInterfaceIPConfiguration, (value) => value.toMap()),
    };
  }

  factory LoadBalancerBackendAddressProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return LoadBalancerBackendAddressProperties(
      adminState: (() {
        final guardedValue = map['adminState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkInterfaceIPConfiguration: (() {
        final guardedValue = map['networkInterfaceIPConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IPConfigurationArmReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
