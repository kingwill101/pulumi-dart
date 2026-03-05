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
      assessmentMode: (() { final guardedValue = map['assessmentMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableHotpatching: (() { final guardedValue = map['enableHotpatching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      patchMode: (() { final guardedValue = map['patchMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(PatchSettingsResponseStatus.fromMap((map['status']! as Map).cast<String, dynamic>())),
    );
  }
}

