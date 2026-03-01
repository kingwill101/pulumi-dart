// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the linux configuration for update management.
class OsProfileLinuxConfiguration {
  /// Specifies the assessment mode.
  final String? assessmentMode;
  /// Specifies the patch mode.
  final String? patchMode;

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
      assessmentMode: map['assessmentMode'] == null ? null : map['assessmentMode'] as String,
      patchMode: map['patchMode'] == null ? null : map['patchMode'] as String,
    );
  }
}

