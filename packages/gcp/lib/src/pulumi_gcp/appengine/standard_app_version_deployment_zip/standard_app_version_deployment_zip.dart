// ignore_for_file: unused_element, unnecessary_cast

class StandardAppVersionDeploymentZip {
  /// files count
  final int? filesCount;

  /// Source URL
  final String sourceUrl;

  StandardAppVersionDeploymentZip({
    this.filesCount,
    required this.sourceUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filesCountValue = filesCount;
    if (filesCountValue != null) {
      map['filesCount'] = filesCountValue;
    }
    map['sourceUrl'] = sourceUrl;
    return map;
  }

  factory StandardAppVersionDeploymentZip.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionDeploymentZip(
      filesCount: map['filesCount'] == null ? null : map['filesCount'] as int,
      sourceUrl: map['sourceUrl'] as String,
    );
  }
}
