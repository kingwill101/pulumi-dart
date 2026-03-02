// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'patch_settings_response_status.dart';

/// Specifies the windows configuration for update management.
class OSProfileResponseWindowsConfiguration {
  /// Specifies the assessment mode.
  final pulumi.Input<String>? assessmentMode;
  /// Captures the hotpatch capability enrollment intent of the customers, which enables customers to patch their Windows machines without requiring a reboot.
  final pulumi.Input<bool>? enableHotpatching;
  /// Specifies the patch mode.
  final pulumi.Input<String>? patchMode;
  /// Status of the hotpatch capability enrollment or disenrollment.
  final pulumi.Input<PatchSettingsResponseStatus> status;

  /// Creates a new [OSProfileResponseWindowsConfiguration].
  /// [assessmentMode] Specifies the assessment mode.
  /// [enableHotpatching] Captures the hotpatch capability enrollment intent of the customers, which enables customers to patch their Windows machines without requiring a reboot.
  /// [patchMode] Specifies the patch mode.
  /// [status] Status of the hotpatch capability enrollment or disenrollment.
  OSProfileResponseWindowsConfiguration({
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
      'status': pulumi.Input.mapInputValue<PatchSettingsResponseStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory OSProfileResponseWindowsConfiguration.fromMap(Map<String, dynamic> map) {
    return OSProfileResponseWindowsConfiguration(
      assessmentMode: map['assessmentMode'] == null ? null : (map['assessmentMode'] as String).input(),
      enableHotpatching: map['enableHotpatching'] == null ? null : (map['enableHotpatching'] as bool).input(),
      patchMode: map['patchMode'] == null ? null : (map['patchMode'] as String).input(),
      status: (PatchSettingsResponseStatus.fromMap((map['status'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

