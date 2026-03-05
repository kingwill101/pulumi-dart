// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyperv_virtualization_management_settings.dart';
import 'other_management_costs_settings.dart';
import 'third_party_management_settings.dart';

/// Management settings.
class ManagementSettings {
  /// HyperV Virtualization Management Settings.
  final pulumi.Input<HypervVirtualizationManagementSettings> hypervVirtualizationManagementSettings;
  /// Other Management Costs Settings.
  final pulumi.Input<OtherManagementCostsSettings> otherManagementCostsSettings;
  /// Third Party Management Settings.
  final pulumi.Input<ThirdPartyManagementSettings> thirdPartyManagementSettings;

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
      'hypervVirtualizationManagementSettings': pulumi.Input.mapInputValue<HypervVirtualizationManagementSettings, Map<String, dynamic>>(hypervVirtualizationManagementSettings, (value) => value.toMap()),
      'otherManagementCostsSettings': pulumi.Input.mapInputValue<OtherManagementCostsSettings, Map<String, dynamic>>(otherManagementCostsSettings, (value) => value.toMap()),
      'thirdPartyManagementSettings': pulumi.Input.mapInputValue<ThirdPartyManagementSettings, Map<String, dynamic>>(thirdPartyManagementSettings, (value) => value.toMap()),
    };
  }

  factory ManagementSettings.fromMap(Map<String, dynamic> map) {
    return ManagementSettings(
      hypervVirtualizationManagementSettings: pulumi.Input.fromValue(HypervVirtualizationManagementSettings.fromMap((map['hypervVirtualizationManagementSettings']! as Map).cast<String, dynamic>())),
      otherManagementCostsSettings: pulumi.Input.fromValue(OtherManagementCostsSettings.fromMap((map['otherManagementCostsSettings']! as Map).cast<String, dynamic>())),
      thirdPartyManagementSettings: pulumi.Input.fromValue(ThirdPartyManagementSettings.fromMap((map['thirdPartyManagementSettings']! as Map).cast<String, dynamic>())),
    );
  }
}

