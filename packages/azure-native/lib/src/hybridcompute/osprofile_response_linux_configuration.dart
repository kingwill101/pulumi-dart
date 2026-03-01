// ignore_for_file: unused_element, unnecessary_cast

import 'patch_settings_response_status.dart';

/// Specifies the linux configuration for update management.
class OSProfileResponseLinuxConfiguration {
  /// Specifies the assessment mode.
  final String? assessmentMode;
  /// Captures the hotpatch capability enrollment intent of the customers, which enables customers to patch their Windows machines without requiring a reboot.
  final bool? enableHotpatching;
  /// Specifies the patch mode.
  final String? patchMode;
  /// Status of the hotpatch capability enrollment or disenrollment.
  final PatchSettingsResponseStatus status;

  /// Creates a new [OSProfileResponseLinuxConfiguration].
  /// [assessmentMode] Specifies the assessment mode.
  /// [enableHotpatching] Captures the hotpatch capability enrollment intent of the customers, which enables customers to patch their Windows machines without requiring a reboot.
  /// [patchMode] Specifies the patch mode.
  /// [status] Status of the hotpatch capability enrollment or disenrollment.
  OSProfileResponseLinuxConfiguration({
    this.assessmentMode,
    this.enableHotpatching,
    this.patchMode,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentMode': ?assessmentMode,
      'enableHotpatching': ?enableHotpatching,
      'patchMode': ?patchMode,
      'status': status.toMap(),
    };
  }

  factory OSProfileResponseLinuxConfiguration.fromMap(Map<String, dynamic> map) {
    return OSProfileResponseLinuxConfiguration(
      assessmentMode: map['assessmentMode'] == null ? null : map['assessmentMode'] as String,
      enableHotpatching: map['enableHotpatching'] == null ? null : map['enableHotpatching'] as bool,
      patchMode: map['patchMode'] == null ? null : map['patchMode'] as String,
      status: PatchSettingsResponseStatus.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

