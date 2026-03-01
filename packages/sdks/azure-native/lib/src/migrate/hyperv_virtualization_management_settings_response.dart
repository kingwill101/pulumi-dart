// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyperv_license_response.dart';

/// HyperV Virtualization Management Settings.
class HypervVirtualizationManagementSettingsResponse {
  /// Licence and support list.
  final List<HypervLicenseResponse> licenseAndSupportList;
  /// Number of physical cores per licence.
  final int numberOfPhysicalCoresPerLicense;
  /// Software Assurance Cost.
  final double softwareAssuranceCost;

  /// Creates a new [HypervVirtualizationManagementSettingsResponse].
  /// [licenseAndSupportList] Licence and support list.
  /// [numberOfPhysicalCoresPerLicense] Number of physical cores per licence.
  /// [softwareAssuranceCost] Software Assurance Cost.
  HypervVirtualizationManagementSettingsResponse({
    required this.licenseAndSupportList,
    required this.numberOfPhysicalCoresPerLicense,
    required this.softwareAssuranceCost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseAndSupportList': pulumi.Input.encodeList<HypervLicenseResponse, Map<String, dynamic>>(licenseAndSupportList, (value) => value.toMap()),
      'numberOfPhysicalCoresPerLicense': numberOfPhysicalCoresPerLicense,
      'softwareAssuranceCost': softwareAssuranceCost,
    };
  }

  factory HypervVirtualizationManagementSettingsResponse.fromMap(Map<String, dynamic> map) {
    return HypervVirtualizationManagementSettingsResponse(
      licenseAndSupportList: pulumi.Input.decodeList<HypervLicenseResponse>(map['licenseAndSupportList'], (value) => HypervLicenseResponse.fromMap((value as Map).cast<String, dynamic>())),
      numberOfPhysicalCoresPerLicense: map['numberOfPhysicalCoresPerLicense'] as int,
      softwareAssuranceCost: map['softwareAssuranceCost'] as double,
    );
  }
}

