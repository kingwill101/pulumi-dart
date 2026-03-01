// ignore_for_file: unused_element, unnecessary_cast


/// The JFrog Artifactory connector environment data
class JFrogEnvironmentData {
  /// The type of the environment data.
  /// Expected value is 'JFrogArtifactory'.
  final String environmentType;
  /// Scan interval in hours (value should be between 1-hour to 24-hours)
  final int? scanInterval;

  /// Creates a new [JFrogEnvironmentData].
  /// [environmentType] The type of the environment data.
  /// [scanInterval] Scan interval in hours (value should be between 1-hour to 24-hours)
  JFrogEnvironmentData({
    required this.environmentType,
    this.scanInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentType': environmentType,
      'scanInterval': ?scanInterval,
    };
  }

  factory JFrogEnvironmentData.fromMap(Map<String, dynamic> map) {
    return JFrogEnvironmentData(
      environmentType: map['environmentType'] as String,
      scanInterval: map['scanInterval'] == null ? null : map['scanInterval'] as int,
    );
  }
}

