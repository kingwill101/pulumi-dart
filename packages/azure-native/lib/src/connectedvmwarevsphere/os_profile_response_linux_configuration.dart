// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the linux configuration for update management.
class OsProfileResponseLinuxConfiguration {
  /// Specifies the assessment mode.
  final String? assessmentMode;
  /// Specifies the patch mode.
  final String? patchMode;

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
      assessmentMode: map['assessmentMode'] == null ? null : map['assessmentMode'] as String,
      patchMode: map['patchMode'] == null ? null : map['patchMode'] as String,
    );
  }
}

