// ignore_for_file: unused_element, unnecessary_cast

import 'license.dart';

/// Properties for the Machine ESU profile.
class LicenseProfileMachineInstanceViewEsuProperties {
  /// The assigned license resource.
  final License? assignedLicense;
  /// Describes the license assignment state (Assigned or NotAssigned).
  final String? licenseAssignmentState;

  /// Creates a new [LicenseProfileMachineInstanceViewEsuProperties].
  /// [assignedLicense] The assigned license resource.
  /// [licenseAssignmentState] Describes the license assignment state (Assigned or NotAssigned).
  LicenseProfileMachineInstanceViewEsuProperties({
    this.assignedLicense,
    this.licenseAssignmentState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedLicense': ?assignedLicense == null ? null : assignedLicense!.toMap(),
      'licenseAssignmentState': ?licenseAssignmentState,
    };
  }

  factory LicenseProfileMachineInstanceViewEsuProperties.fromMap(Map<String, dynamic> map) {
    return LicenseProfileMachineInstanceViewEsuProperties(
      assignedLicense: map['assignedLicense'] == null ? null : License.fromMap((map['assignedLicense'] as Map).cast<String, dynamic>()),
      licenseAssignmentState: map['licenseAssignmentState'] == null ? null : map['licenseAssignmentState'] as String,
    );
  }
}

