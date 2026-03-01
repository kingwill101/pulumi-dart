// ignore_for_file: unused_element, unnecessary_cast

class FlexibleAppVersionDeploymentZip {
  /// files count
  final int? filesCount;

  /// Source URL
  final String sourceUrl;

  /// Creates a new [FlexibleAppVersionDeploymentZip].
  /// [filesCount] files count
  /// [sourceUrl] Source URL
  FlexibleAppVersionDeploymentZip({this.filesCount, required this.sourceUrl});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'filesCount': ?filesCount, 'sourceUrl': sourceUrl};
  }

  factory FlexibleAppVersionDeploymentZip.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionDeploymentZip(
      filesCount: map['filesCount'] == null ? null : map['filesCount'] as int,
      sourceUrl: map['sourceUrl'] as String,
    );
  }
}
