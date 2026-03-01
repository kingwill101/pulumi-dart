// ignore_for_file: unused_element, unnecessary_cast


class FlexibleAppVersionDeploymentFile {
  /// The identifier for this object. Format specified above.
  final String name;
  /// SHA1 checksum of the file
  final String? sha1Sum;
  /// Source URL
  final String sourceUrl;

  /// Creates a new [FlexibleAppVersionDeploymentFile].
  /// [name] The identifier for this object. Format specified above.
  /// [sha1Sum] SHA1 checksum of the file
  /// [sourceUrl] Source URL
  FlexibleAppVersionDeploymentFile({
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

  factory FlexibleAppVersionDeploymentFile.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionDeploymentFile(
      name: map['name'] as String,
      sha1Sum: map['sha1Sum'] == null ? null : map['sha1Sum'] as String,
      sourceUrl: map['sourceUrl'] as String,
    );
  }
}

