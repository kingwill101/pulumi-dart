// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeS3 {
  /// Name of the Amazon S3 bucket.
  final String bucket;

  /// Key of the object containing the ZIP file of the source code for the agent runtime in the Amazon S3 bucket.
  final String prefix;

  /// Version ID of the Amazon S3 object. If not specified, the latest version of the object is used.
  final String? versionId;

  /// Creates a new [AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeS3].
  /// [bucket] Name of the Amazon S3 bucket.
  /// [prefix] Key of the object containing the ZIP file of the source code for the agent runtime in the Amazon S3 bucket.
  /// [versionId] Version ID of the Amazon S3 object. If not specified, the latest version of the object is used.
  AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeS3({
    required this.bucket,
    required this.prefix,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'prefix': prefix,
      'versionId': ?versionId,
    };
  }

  factory AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeS3.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeS3(
      bucket: map['bucket'] as String,
      prefix: map['prefix'] as String,
      versionId: map['versionId'] == null ? null : map['versionId'] as String,
    );
  }
}
