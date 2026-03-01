// ignore_for_file: unused_element, unnecessary_cast

import 'hyperv_virtualization_management_settings.dart';
import 'other_management_costs_settings.dart';
import 'third_party_management_settings.dart';

/// Management settings.
class ManagementSettings {
  /// HyperV Virtualization Management Settings.
  final HypervVirtualizationManagementSettings hypervVirtualizationManagementSettings;
  /// Other Management Costs Settings.
  final OtherManagementCostsSettings otherManagementCostsSettings;
  /// Third Party Management Settings.
  final ThirdPartyManagementSettings thirdPartyManagementSettings;

  /// Creates a new [ManagementSettings].
  /// [hypervVirtualizationManagementSettings] HyperV Virtualization Management Settings.
  /// [otherManagementCostsSettings] Other Management Costs Settings.
  /// [thirdPartyManagementSettings] Third Party Management Settings.
  ManagementSettings({
    required this.hypervVirtualizationManagementSettings,
    required this.otherManagementCostsSettings,
    required this.thirdPartyManagementSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hypervVirtualizationManagementSettings': hypervVirtualizationManagementSettings.toMap(),
      'otherManagementCostsSettings': otherManagementCostsSettings.toMap(),
      'thirdPartyManagementSettings': thirdPartyManagementSettings.toMap(),
    };
  }

  factory ManagementSettings.fromMap(Map<String, dynamic> map) {
    return ManagementSettings(
      hypervVirtualizationManagementSettings: HypervVirtualizationManagementSettings.fromMap((map['hypervVirtualizationManagementSettings'] as Map).cast<String, dynamic>()),
      otherManagementCostsSettings: OtherManagementCostsSettings.fromMap((map['otherManagementCostsSettings'] as Map).cast<String, dynamic>()),
      thirdPartyManagementSettings: ThirdPartyManagementSettings.fromMap((map['thirdPartyManagementSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

