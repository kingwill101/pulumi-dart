// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license.dart';

/// Properties for the Machine ESU profile.
class LicenseProfileMachineInstanceViewEsuProperties {
  /// The assigned license resource.
  final pulumi.Input<License>? assignedLicense;
  /// Describes the license assignment state (Assigned or NotAssigned).
  final pulumi.Input<String>? licenseAssignmentState;

  /// Creates a new [LicenseProfileMachineInstanceViewEsuProperties].
  /// [assignedLicense] The assigned license resource.
  /// [licenseAssignmentState] Describes the license assignment state (Assigned or NotAssigned).
  LicenseProfileMachineInstanceViewEsuProperties({
    this.assignedLicense,
    this.licenseAssignmentState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedLicense': ?pulumi.Input.mapOptionalInputValue<License, Map<String, dynamic>>(assignedLicense, (value) => value.toMap()),
      'licenseAssignmentState': ?licenseAssignmentState,
    };
  }

  factory LicenseProfileMachineInstanceViewEsuProperties.fromMap(Map<String, dynamic> map) {
    return LicenseProfileMachineInstanceViewEsuProperties(
      assignedLicense: map['assignedLicense'] == null ? null : (License.fromMap((map['assignedLicense'] as Map).cast<String, dynamic>())).input(),
      licenseAssignmentState: map['licenseAssignmentState'] == null ? null : (map['licenseAssignmentState'] as String).input(),
    );
  }
}

