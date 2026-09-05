// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability_configuration_argo_cd.dart';

class CapabilityConfiguration {
  /// ArgoCD configuration. See `argoCd` below.
  final pulumi.Input<CapabilityConfigurationArgoCd?>? argoCd;

  /// Creates a new [CapabilityConfiguration].
  /// [argoCd] ArgoCD configuration. See `argoCd` below.
  const CapabilityConfiguration({
    this.argoCd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'argoCd': ?pulumi.Input.mapOptionalInputValue<CapabilityConfigurationArgoCd, Map<String, dynamic>>(argoCd, (value) => value.toMap()),
    };
  }

  factory CapabilityConfiguration.fromMap(Map<String, dynamic> map) {
    return CapabilityConfiguration(
      argoCd: (() { final guardedValue = map['argoCd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapabilityConfigurationArgoCd.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
