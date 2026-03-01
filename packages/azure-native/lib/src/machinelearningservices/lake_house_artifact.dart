// ignore_for_file: unused_element, unnecessary_cast


class LakeHouseArtifact {
  /// [Required] OneLake artifact name
  final String artifactName;
  /// Enum to determine OneLake artifact type.
  /// Expected value is 'LakeHouse'.
  final String artifactType;

  /// Creates a new [LakeHouseArtifact].
  /// [artifactName] [Required] OneLake artifact name
  /// [artifactType] Enum to determine OneLake artifact type.
  LakeHouseArtifact({
    required this.artifactName,
    required this.artifactType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactName': artifactName,
      'artifactType': artifactType,
    };
  }

  factory LakeHouseArtifact.fromMap(Map<String, dynamic> map) {
    return LakeHouseArtifact(
      artifactName: map['artifactName'] as String,
      artifactType: map['artifactType'] as String,
    );
  }
}

