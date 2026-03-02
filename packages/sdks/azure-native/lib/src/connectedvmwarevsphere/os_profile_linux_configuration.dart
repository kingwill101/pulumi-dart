// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the linux configuration for update management.
class OsProfileLinuxConfiguration {
  /// Specifies the assessment mode.
  final pulumi.Input<String>? assessmentMode;
  /// Specifies the patch mode.
  final pulumi.Input<String>? patchMode;

  /// Creates a new [OsProfileLinuxConfiguration].
  /// [assessmentMode] Specifies the assessment mode.
  /// [patchMode] Specifies the patch mode.
  OsProfileLinuxConfiguration({
    this.assessmentMode,
    this.patchMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentMode': ?assessmentMode,
      'patchMode': ?patchMode,
    };
  }

  factory OsProfileLinuxConfiguration.fromMap(Map<String, dynamic> map) {
    return OsProfileLinuxConfiguration(
      assessmentMode: map['assessmentMode'] == null ? null : (map['assessmentMode']! as String).input(),
      patchMode: map['patchMode'] == null ? null : (map['patchMode']! as String).input(),
    );
  }
}

