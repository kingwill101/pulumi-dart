// ignore_for_file: unused_element, unnecessary_cast

class FlexibleAppVersionDeploymentZip {
  /// files count
  final int? filesCount;

  /// Source URL
  final String sourceUrl;

  FlexibleAppVersionDeploymentZip({
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

  factory FlexibleAppVersionDeploymentZip.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionDeploymentZip(
      filesCount: map['filesCount'] == null ? null : map['filesCount'] as int,
      sourceUrl: map['sourceUrl'] as String,
    );
  }
}
