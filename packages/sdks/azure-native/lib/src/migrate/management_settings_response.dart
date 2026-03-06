// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyperv_virtualization_management_settings_response.dart';
import 'other_management_costs_settings_response.dart';
import 'third_party_management_settings_response.dart';

/// Management settings.
class ManagementSettingsResponse {
  /// HyperV Virtualization Management Settings.
  final pulumi.Input<HypervVirtualizationManagementSettingsResponse> hypervVirtualizationManagementSettings;
  /// Other Management Costs Settings.
  final pulumi.Input<OtherManagementCostsSettingsResponse> otherManagementCostsSettings;
  /// Third Party Management Settings.
  final pulumi.Input<ThirdPartyManagementSettingsResponse> thirdPartyManagementSettings;

  /// Creates a new [ManagementSettingsResponse].
  /// [hypervVirtualizationManagementSettings] HyperV Virtualization Management Settings.
  /// [otherManagementCostsSettings] Other Management Costs Settings.
  /// [thirdPartyManagementSettings] Third Party Management Settings.
  const ManagementSettingsResponse({
    required this.hypervVirtualizationManagementSettings,
    required this.otherManagementCostsSettings,
    required this.thirdPartyManagementSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hypervVirtualizationManagementSettings': pulumi.Input.mapInputValue<HypervVirtualizationManagementSettingsResponse, Map<String, dynamic>>(hypervVirtualizationManagementSettings, (value) => value.toMap()),
      'otherManagementCostsSettings': pulumi.Input.mapInputValue<OtherManagementCostsSettingsResponse, Map<String, dynamic>>(otherManagementCostsSettings, (value) => value.toMap()),
      'thirdPartyManagementSettings': pulumi.Input.mapInputValue<ThirdPartyManagementSettingsResponse, Map<String, dynamic>>(thirdPartyManagementSettings, (value) => value.toMap()),
    };
  }

  factory ManagementSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ManagementSettingsResponse(
      hypervVirtualizationManagementSettings: pulumi.Input.fromValue(HypervVirtualizationManagementSettingsResponse.fromMap((map['hypervVirtualizationManagementSettings']! as Map).cast<String, dynamic>())),
      otherManagementCostsSettings: pulumi.Input.fromValue(OtherManagementCostsSettingsResponse.fromMap((map['otherManagementCostsSettings']! as Map).cast<String, dynamic>())),
      thirdPartyManagementSettings: pulumi.Input.fromValue(ThirdPartyManagementSettingsResponse.fromMap((map['thirdPartyManagementSettings']! as Map).cast<String, dynamic>())),
    );
  }
}

