// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability_configuration_argo_cd.dart';

class CapabilityConfiguration {
  /// ArgoCD configuration. See `argo_cd` below.
  final pulumi.Input<CapabilityConfigurationArgoCd>? argoCd;

  /// Creates a new [CapabilityConfiguration].
  /// [argoCd] ArgoCD configuration. See `argo_cd` below.
  CapabilityConfiguration({
    this.argoCd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'argoCd': ?pulumi.Input.mapOptionalInputValue<CapabilityConfigurationArgoCd, Map<String, dynamic>>(argoCd, (value) => value.toMap()),
    };
  }

  factory CapabilityConfiguration.fromMap(Map<String, dynamic> map) {
    return CapabilityConfiguration(
      argoCd: map['argoCd'] == null ? null : ((CapabilityConfigurationArgoCd.fromMap((map['argoCd']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

