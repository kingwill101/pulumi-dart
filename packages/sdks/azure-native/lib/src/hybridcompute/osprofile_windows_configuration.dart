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
      assessmentMode: (() {
        final guardedValue = map['assessmentMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableHotpatching: (() {
        final guardedValue = map['enableHotpatching'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      patchMode: (() {
        final guardedValue = map['patchMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
