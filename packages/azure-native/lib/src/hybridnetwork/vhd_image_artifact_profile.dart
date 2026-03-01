// ignore_for_file: unused_element, unnecessary_cast


/// Vhd artifact profile.
class VhdImageArtifactProfile {
  /// Vhd name.
  final String? vhdName;
  /// Vhd version.
  final String? vhdVersion;

  /// Creates a new [VhdImageArtifactProfile].
  /// [vhdName] Vhd name.
  /// [vhdVersion] Vhd version.
  VhdImageArtifactProfile({
    this.vhdName,
    this.vhdVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vhdName': ?vhdName,
      'vhdVersion': ?vhdVersion,
    };
  }

  factory VhdImageArtifactProfile.fromMap(Map<String, dynamic> map) {
    return VhdImageArtifactProfile(
      vhdName: map['vhdName'] == null ? null : map['vhdName'] as String,
      vhdVersion: map['vhdVersion'] == null ? null : map['vhdVersion'] as String,
    );
  }
}

