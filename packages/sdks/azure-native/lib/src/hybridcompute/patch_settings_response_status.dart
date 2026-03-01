// ignore_for_file: unused_element, unnecessary_cast

import 'error_detail_response.dart';

/// Status of the hotpatch capability enrollment or disenrollment.
class PatchSettingsResponseStatus {
  /// The errors that were encountered during the hotpatch capability enrollment or disenrollment.
  final ErrorDetailResponse error;
  /// Indicates the current status of the hotpatch being enabled or disabled.
  final String? hotpatchEnablementStatus;

  /// Creates a new [PatchSettingsResponseStatus].
  /// [error] The errors that were encountered during the hotpatch capability enrollment or disenrollment.
  /// [hotpatchEnablementStatus] Indicates the current status of the hotpatch being enabled or disabled.
  PatchSettingsResponseStatus({
    required this.error,
    this.hotpatchEnablementStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': error.toMap(),
      'hotpatchEnablementStatus': ?hotpatchEnablementStatus,
    };
  }

  factory PatchSettingsResponseStatus.fromMap(Map<String, dynamic> map) {
    return PatchSettingsResponseStatus(
      error: ErrorDetailResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      hotpatchEnablementStatus: map['hotpatchEnablementStatus'] == null ? null : map['hotpatchEnablementStatus'] as String,
    );
  }
}

