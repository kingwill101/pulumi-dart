// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'esu_key_response.dart';
import 'license_response.dart';

/// Properties for the Machine ESU profile.
class LicenseProfileMachineInstanceViewEsuPropertiesResponse {
  /// The assigned license resource.
  final pulumi.Input<LicenseResponse>? assignedLicense;
  /// The guid id of the license.
  final pulumi.Input<String> assignedLicenseImmutableId;
  /// Indicates the eligibility state of Esu.
  final pulumi.Input<String> esuEligibility;
  /// Indicates whether there is an ESU Key currently active for the machine.
  final pulumi.Input<String> esuKeyState;
  /// The list of ESU keys.
  final pulumi.Input<List<EsuKeyResponse>> esuKeys;
  /// Describes the license assignment state (Assigned or NotAssigned).
  final pulumi.Input<String>? licenseAssignmentState;
  /// The type of the Esu servers.
  final pulumi.Input<String> serverType;

  /// Creates a new [LicenseProfileMachineInstanceViewEsuPropertiesResponse].
  /// [assignedLicense] The assigned license resource.
  /// [assignedLicenseImmutableId] The guid id of the license.
  /// [esuEligibility] Indicates the eligibility state of Esu.
  /// [esuKeyState] Indicates whether there is an ESU Key currently active for the machine.
  /// [esuKeys] The list of ESU keys.
  /// [licenseAssignmentState] Describes the license assignment state (Assigned or NotAssigned).
  /// [serverType] The type of the Esu servers.
  LicenseProfileMachineInstanceViewEsuPropertiesResponse({
    this.assignedLicense,
    required this.assignedLicenseImmutableId,
    required this.esuEligibility,
    required this.esuKeyState,
    required this.esuKeys,
    this.licenseAssignmentState,
    required this.serverType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedLicense': ?pulumi.Input.mapOptionalInputValue<LicenseResponse, Map<String, dynamic>>(assignedLicense, (value) => value.toMap()),
      'assignedLicenseImmutableId': assignedLicenseImmutableId,
      'esuEligibility': esuEligibility,
      'esuKeyState': esuKeyState,
      'esuKeys': pulumi.Input.mapInputValue<List<EsuKeyResponse>, List<Map<String, dynamic>>>(esuKeys, (value) => pulumi.Input.encodeList<EsuKeyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'licenseAssignmentState': ?licenseAssignmentState,
      'serverType': serverType,
    };
  }

  factory LicenseProfileMachineInstanceViewEsuPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LicenseProfileMachineInstanceViewEsuPropertiesResponse(
      assignedLicense: (() { final guardedValue = map['assignedLicense']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LicenseResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      assignedLicenseImmutableId: pulumi.Input.fromValue(map['assignedLicenseImmutableId'] as String),
      esuEligibility: pulumi.Input.fromValue(map['esuEligibility'] as String),
      esuKeyState: pulumi.Input.fromValue(map['esuKeyState'] as String),
      esuKeys: pulumi.Input.fromValue(pulumi.Input.decodeList<EsuKeyResponse>(map['esuKeys']!, (value) => EsuKeyResponse.fromMap((value as Map).cast<String, dynamic>()))),
      licenseAssignmentState: (() { final guardedValue = map['licenseAssignmentState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverType: pulumi.Input.fromValue(map['serverType'] as String),
    );
  }
}

