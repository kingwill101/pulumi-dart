// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the windows configuration for update management.
class OsProfileResponseWindowsConfiguration {
  /// Specifies the assessment mode.
  final String? assessmentMode;
  /// Specifies the patch mode.
  final String? patchMode;

  /// Creates a new [OsProfileResponseWindowsConfiguration].
  /// [assessmentMode] Specifies the assessment mode.
  /// [patchMode] Specifies the patch mode.
  OsProfileResponseWindowsConfiguration({
    this.assessmentMode,
    this.patchMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentMode': ?assessmentMode,
      'patchMode': ?patchMode,
    };
  }

  factory OsProfileResponseWindowsConfiguration.fromMap(Map<String, dynamic> map) {
    return OsProfileResponseWindowsConfiguration(
      assessmentMode: map['assessmentMode'] == null ? null : map['assessmentMode'] as String,
      patchMode: map['patchMode'] == null ? null : map['patchMode'] as String,
    );
  }
}

