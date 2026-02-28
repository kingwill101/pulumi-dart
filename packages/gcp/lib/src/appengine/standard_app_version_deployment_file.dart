// ignore_for_file: unused_element, unnecessary_cast


class StandardAppVersionDeploymentFile {
  /// The identifier for this object. Format specified above.
  final String name;
  /// SHA1 checksum of the file
  final String? sha1Sum;
  /// Source URL
  final String sourceUrl;

  /// Creates a new [StandardAppVersionDeploymentFile].
  /// [name] The identifier for this object. Format specified above.
  /// [sha1Sum] SHA1 checksum of the file
  /// [sourceUrl] Source URL
  StandardAppVersionDeploymentFile({
    required this.name,
    this.sha1Sum,
    required this.sourceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'sha1Sum': ?sha1Sum,
      'sourceUrl': sourceUrl,
    };
  }

  factory StandardAppVersionDeploymentFile.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionDeploymentFile(
      name: map['name'] as String,
      sha1Sum: map['sha1Sum'] == null ? null : map['sha1Sum'] as String,
      sourceUrl: map['sourceUrl'] as String,
    );
  }
}

