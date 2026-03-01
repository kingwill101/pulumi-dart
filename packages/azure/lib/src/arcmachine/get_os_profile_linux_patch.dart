// ignore_for_file: unused_element, unnecessary_cast


class GetOsProfileLinuxPatch {
  /// Specifies the assessment mode.
  final String assessmentMode;
  /// Specifies the patch mode.
  final String patchMode;

  /// Creates a new [GetOsProfileLinuxPatch].
  /// [assessmentMode] Specifies the assessment mode.
  /// [patchMode] Specifies the patch mode.
  GetOsProfileLinuxPatch({
    required this.assessmentMode,
    required this.patchMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentMode': assessmentMode,
      'patchMode': patchMode,
    };
  }

  factory GetOsProfileLinuxPatch.fromMap(Map<String, dynamic> map) {
    return GetOsProfileLinuxPatch(
      assessmentMode: map['assessmentMode'] as String,
      patchMode: map['patchMode'] as String,
    );
  }
}

