// ignore_for_file: unused_element, unnecessary_cast

import 'hyperv_virtualization_management_settings_response.dart';
import 'other_management_costs_settings_response.dart';
import 'third_party_management_settings_response.dart';

/// Management settings.
class ManagementSettingsResponse {
  /// HyperV Virtualization Management Settings.
  final HypervVirtualizationManagementSettingsResponse hypervVirtualizationManagementSettings;
  /// Other Management Costs Settings.
  final OtherManagementCostsSettingsResponse otherManagementCostsSettings;
  /// Third Party Management Settings.
  final ThirdPartyManagementSettingsResponse thirdPartyManagementSettings;

  /// Creates a new [ManagementSettingsResponse].
  /// [hypervVirtualizationManagementSettings] HyperV Virtualization Management Settings.
  /// [otherManagementCostsSettings] Other Management Costs Settings.
  /// [thirdPartyManagementSettings] Third Party Management Settings.
  ManagementSettingsResponse({
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

  factory ManagementSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ManagementSettingsResponse(
      hypervVirtualizationManagementSettings: HypervVirtualizationManagementSettingsResponse.fromMap((map['hypervVirtualizationManagementSettings'] as Map).cast<String, dynamic>()),
      otherManagementCostsSettings: OtherManagementCostsSettingsResponse.fromMap((map['otherManagementCostsSettings'] as Map).cast<String, dynamic>()),
      thirdPartyManagementSettings: ThirdPartyManagementSettingsResponse.fromMap((map['thirdPartyManagementSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

