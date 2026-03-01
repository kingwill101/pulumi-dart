// ignore_for_file: unused_element, unnecessary_cast


class GetVersionsVersion {
  /// The edition of the ASM instance. Valid values:
  /// - Default: Standard Edition
  /// - Pro: Professional Edition
  final String edition;
  /// The ASM version id. It formats as `<edition>:<version>`.
  final String id;
  /// A list of Service Mesh Service Meshes. Each element contains the following attributes:
  final String version;

  /// Creates a new [GetVersionsVersion].
  /// [edition] The edition of the ASM instance. Valid values:
  /// [id] The ASM version id. It formats as `<edition>:<version>`.
  /// [version] A list of Service Mesh Service Meshes. Each element contains the following attributes:
  GetVersionsVersion({
    required this.edition,
    required this.id,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edition': edition,
      'id': id,
      'version': version,
    };
  }

  factory GetVersionsVersion.fromMap(Map<String, dynamic> map) {
    return GetVersionsVersion(
      edition: map['edition'] as String,
      id: map['id'] as String,
      version: map['version'] as String,
    );
  }
}

