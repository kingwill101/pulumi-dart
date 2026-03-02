// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyperv_license.dart';

/// HyperV Virtualization Management Settings.
class HypervVirtualizationManagementSettings {
  /// Licence and support list.
  final pulumi.Input<List<HypervLicense>> licenseAndSupportList;
  /// Number of physical cores per licence.
  final pulumi.Input<int> numberOfPhysicalCoresPerLicense;
  /// Software Assurance Cost.
  final pulumi.Input<double> softwareAssuranceCost;

  /// Creates a new [HypervVirtualizationManagementSettings].
  /// [licenseAndSupportList] Licence and support list.
  /// [numberOfPhysicalCoresPerLicense] Number of physical cores per licence.
  /// [softwareAssuranceCost] Software Assurance Cost.
  HypervVirtualizationManagementSettings({
    required this.licenseAndSupportList,
    required this.numberOfPhysicalCoresPerLicense,
    required this.softwareAssuranceCost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseAndSupportList': pulumi.Input.mapInputValue<List<HypervLicense>, List<Map<String, dynamic>>>(licenseAndSupportList, (value) => pulumi.Input.encodeList<HypervLicense, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numberOfPhysicalCoresPerLicense': numberOfPhysicalCoresPerLicense,
      'softwareAssuranceCost': softwareAssuranceCost,
    };
  }

  factory HypervVirtualizationManagementSettings.fromMap(Map<String, dynamic> map) {
    return HypervVirtualizationManagementSettings(
      licenseAndSupportList: (pulumi.Input.decodeList<HypervLicense>(map['licenseAndSupportList'], (value) => HypervLicense.fromMap((value as Map).cast<String, dynamic>()))).input(),
      numberOfPhysicalCoresPerLicense: (map['numberOfPhysicalCoresPerLicense'] as int).input(),
      softwareAssuranceCost: (map['softwareAssuranceCost'] as double).input(),
    );
  }
}

