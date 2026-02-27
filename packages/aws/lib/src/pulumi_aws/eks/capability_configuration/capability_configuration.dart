// ignore_for_file: unused_element, unnecessary_cast

import '../capability_configuration_argo_cd/capability_configuration_argo_cd.dart';

class CapabilityConfiguration {
  /// ArgoCD configuration. See `argo_cd` below.
  final CapabilityConfigurationArgoCd? argoCd;

  CapabilityConfiguration({
    this.argoCd,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final argoCdValue = argoCd;
    if (argoCdValue != null) {
      map['argoCd'] = argoCdValue.toMap();
    }
    return map;
  }

  factory CapabilityConfiguration.fromMap(Map<String, dynamic> map) {
    return CapabilityConfiguration(
      argoCd: map['argoCd'] == null
          ? null
          : CapabilityConfigurationArgoCd.fromMap(
              (map['argoCd'] as Map).cast<String, dynamic>()),
    );
  }
}
