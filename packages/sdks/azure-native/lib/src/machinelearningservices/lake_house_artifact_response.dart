// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LakeHouseArtifactResponse {
  /// [Required] OneLake artifact name
  final pulumi.Input<String> artifactName;
  /// Enum to determine OneLake artifact type.
  /// Expected value is 'LakeHouse'.
  final pulumi.Input<String> artifactType;

  /// Creates a new [LakeHouseArtifactResponse].
  /// [artifactName] [Required] OneLake artifact name
  /// [artifactType] Enum to determine OneLake artifact type.
  const LakeHouseArtifactResponse({
    required this.artifactName,
    required this.artifactType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactName': artifactName,
      'artifactType': artifactType,
    };
  }

  factory LakeHouseArtifactResponse.fromMap(Map<String, dynamic> map) {
    return LakeHouseArtifactResponse(
      artifactName: pulumi.Input.fromValue(map['artifactName'] as String),
      artifactType: pulumi.Input.fromValue(map['artifactType'] as String),
    );
  }
}
