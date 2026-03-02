// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the windows configuration for update management.
class OSProfileWindowsConfiguration {
  /// Specifies the assessment mode.
  final pulumi.Input<String>? assessmentMode;
  /// Captures the hotpatch capability enrollment intent of the customers, which enables customers to patch their Windows machines without requiring a reboot.
  final pulumi.Input<bool>? enableHotpatching;
  /// Specifies the patch mode.
  final pulumi.Input<String>? patchMode;

  /// Creates a new [OSProfileWindowsConfiguration].
  /// [assessmentMode] Specifies the assessment mode.
  /// [enableHotpatching] Captures the hotpatch capability enrollment intent of the customers, which enables customers to patch their Windows machines without requiring a reboot.
  /// [patchMode] Specifies the patch mode.
  OSProfileWindowsConfiguration({
    this.assessmentMode,
    this.enableHotpatching,
    this.patchMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentMode': ?assessmentMode,
      'enableHotpatching': ?enableHotpatching,
      'patchMode': ?patchMode,
    };
  }

  factory OSProfileWindowsConfiguration.fromMap(Map<String, dynamic> map) {
    return OSProfileWindowsConfiguration(
      assessmentMode: map['assessmentMode'] == null ? null : (map['assessmentMode']! as String).input(),
      enableHotpatching: map['enableHotpatching'] == null ? null : (map['enableHotpatching']! as bool).input(),
      patchMode: map['patchMode'] == null ? null : (map['patchMode']! as String).input(),
    );
  }
}

