// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the windows configuration for update management.
class OsProfileWindowsConfiguration {
  /// Specifies the assessment mode.
  final pulumi.Input<String?>? assessmentMode;
  /// Specifies the patch mode.
  final pulumi.Input<String?>? patchMode;

  /// Creates a new [OsProfileWindowsConfiguration].
  /// [assessmentMode] Specifies the assessment mode.
  /// [patchMode] Specifies the patch mode.
  const OsProfileWindowsConfiguration({
    this.assessmentMode,
    this.patchMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentMode': ?assessmentMode,
      'patchMode': ?patchMode,
    };
  }

  factory OsProfileWindowsConfiguration.fromMap(Map<String, dynamic> map) {
    return OsProfileWindowsConfiguration(
      assessmentMode: (() { final guardedValue = map['assessmentMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      patchMode: (() { final guardedValue = map['patchMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
