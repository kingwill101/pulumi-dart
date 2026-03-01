// ignore_for_file: unused_element, unnecessary_cast


/// Vhd artifact profile.
class VhdImageArtifactProfileResponse {
  /// Vhd name.
  final String? vhdName;
  /// Vhd version.
  final String? vhdVersion;

  /// Creates a new [VhdImageArtifactProfileResponse].
  /// [vhdName] Vhd name.
  /// [vhdVersion] Vhd version.
  VhdImageArtifactProfileResponse({
    this.vhdName,
    this.vhdVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vhdName': ?vhdName,
      'vhdVersion': ?vhdVersion,
    };
  }

  factory VhdImageArtifactProfileResponse.fromMap(Map<String, dynamic> map) {
    return VhdImageArtifactProfileResponse(
      vhdName: map['vhdName'] == null ? null : map['vhdName'] as String,
      vhdVersion: map['vhdVersion'] == null ? null : map['vhdVersion'] as String,
    );
  }
}

