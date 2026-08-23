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
  const LicenseProfileMachineInstanceViewEsuProperties({
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
      assignedLicense: (() { final guardedValue = map['assignedLicense']; if (guardedValue == null) return null; return pulumi.Input.fromValue(License.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      licenseAssignmentState: (() { final guardedValue = map['licenseAssignmentState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
