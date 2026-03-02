// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the linux configuration for update management.
class OsProfileResponseLinuxConfiguration {
  /// Specifies the assessment mode.
  final pulumi.Input<String>? assessmentMode;
  /// Specifies the patch mode.
  final pulumi.Input<String>? patchMode;

  /// Creates a new [OsProfileResponseLinuxConfiguration].
  /// [assessmentMode] Specifies the assessment mode.
  /// [patchMode] Specifies the patch mode.
  OsProfileResponseLinuxConfiguration({
    this.assessmentMode,
    this.patchMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentMode': ?assessmentMode,
      'patchMode': ?patchMode,
    };
  }

  factory OsProfileResponseLinuxConfiguration.fromMap(Map<String, dynamic> map) {
    return OsProfileResponseLinuxConfiguration(
      assessmentMode: map['assessmentMode'] == null ? null : (map['assessmentMode'] as String).input(),
      patchMode: map['patchMode'] == null ? null : (map['patchMode'] as String).input(),
    );
  }
}

