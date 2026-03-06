// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyperv_license_response.dart';

/// HyperV Virtualization Management Settings.
class HypervVirtualizationManagementSettingsResponse {
  /// Licence and support list.
  final pulumi.Input<List<HypervLicenseResponse>> licenseAndSupportList;
  /// Number of physical cores per licence.
  final pulumi.Input<int> numberOfPhysicalCoresPerLicense;
  /// Software Assurance Cost.
  final pulumi.Input<double> softwareAssuranceCost;

  /// Creates a new [HypervVirtualizationManagementSettingsResponse].
  /// [licenseAndSupportList] Licence and support list.
  /// [numberOfPhysicalCoresPerLicense] Number of physical cores per licence.
  /// [softwareAssuranceCost] Software Assurance Cost.
  const HypervVirtualizationManagementSettingsResponse({
    required this.licenseAndSupportList,
    required this.numberOfPhysicalCoresPerLicense,
    required this.softwareAssuranceCost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseAndSupportList': pulumi.Input.mapInputValue<List<HypervLicenseResponse>, List<Map<String, dynamic>>>(licenseAndSupportList, (value) => pulumi.Input.encodeList<HypervLicenseResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numberOfPhysicalCoresPerLicense': numberOfPhysicalCoresPerLicense,
      'softwareAssuranceCost': softwareAssuranceCost,
    };
  }

  factory HypervVirtualizationManagementSettingsResponse.fromMap(Map<String, dynamic> map) {
    return HypervVirtualizationManagementSettingsResponse(
      licenseAndSupportList: pulumi.Input.fromValue(pulumi.Input.decodeList<HypervLicenseResponse>(map['licenseAndSupportList']!, (value) => HypervLicenseResponse.fromMap((value as Map).cast<String, dynamic>()))),
      numberOfPhysicalCoresPerLicense: pulumi.Input.fromValue(map['numberOfPhysicalCoresPerLicense'] as int),
      softwareAssuranceCost: pulumi.Input.fromValue(map['softwareAssuranceCost'] as double),
    );
  }
}

