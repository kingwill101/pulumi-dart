// ignore_for_file: unused_element, unnecessary_cast

import 'vm_scanners_base_configuration.dart';

/// The Microsoft Defender for Server VM scanning configuration
class DefenderForServersGcpOfferingVmScanners {
  /// Configuration for VM scanning
  final VmScannersBaseConfiguration? configuration;
  /// Is VM scanning enabled
  final bool? enabled;

  /// Creates a new [DefenderForServersGcpOfferingVmScanners].
  /// [configuration] Configuration for VM scanning
  /// [enabled] Is VM scanning enabled
  DefenderForServersGcpOfferingVmScanners({
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?configuration == null ? null : configuration!.toMap(),
      'enabled': ?enabled,
    };
  }

  factory DefenderForServersGcpOfferingVmScanners.fromMap(Map<String, dynamic> map) {
    return DefenderForServersGcpOfferingVmScanners(
      configuration: map['configuration'] == null ? null : VmScannersBaseConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

