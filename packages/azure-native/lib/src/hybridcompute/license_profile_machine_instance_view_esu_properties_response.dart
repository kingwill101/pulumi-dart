// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'esu_key_response.dart';
import 'license_response.dart';

/// Properties for the Machine ESU profile.
class LicenseProfileMachineInstanceViewEsuPropertiesResponse {
  /// The assigned license resource.
  final LicenseResponse? assignedLicense;
  /// The guid id of the license.
  final String assignedLicenseImmutableId;
  /// Indicates the eligibility state of Esu.
  final String esuEligibility;
  /// Indicates whether there is an ESU Key currently active for the machine.
  final String esuKeyState;
  /// The list of ESU keys.
  final List<EsuKeyResponse> esuKeys;
  /// Describes the license assignment state (Assigned or NotAssigned).
  final String? licenseAssignmentState;
  /// The type of the Esu servers.
  final String serverType;

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
      'assignedLicense': ?assignedLicense == null ? null : assignedLicense!.toMap(),
      'assignedLicenseImmutableId': assignedLicenseImmutableId,
      'esuEligibility': esuEligibility,
      'esuKeyState': esuKeyState,
      'esuKeys': pulumi.Input.encodeList<EsuKeyResponse, Map<String, dynamic>>(esuKeys, (value) => value.toMap()),
      'licenseAssignmentState': ?licenseAssignmentState,
      'serverType': serverType,
    };
  }

  factory LicenseProfileMachineInstanceViewEsuPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LicenseProfileMachineInstanceViewEsuPropertiesResponse(
      assignedLicense: map['assignedLicense'] == null ? null : LicenseResponse.fromMap((map['assignedLicense'] as Map).cast<String, dynamic>()),
      assignedLicenseImmutableId: map['assignedLicenseImmutableId'] as String,
      esuEligibility: map['esuEligibility'] as String,
      esuKeyState: map['esuKeyState'] as String,
      esuKeys: pulumi.Input.decodeList<EsuKeyResponse>(map['esuKeys'], (value) => EsuKeyResponse.fromMap((value as Map).cast<String, dynamic>())),
      licenseAssignmentState: map['licenseAssignmentState'] == null ? null : map['licenseAssignmentState'] as String,
      serverType: map['serverType'] as String,
    );
  }
}

