// ignore_for_file: unused_element, unnecessary_cast

/// LogsPolicy describes how outputs from a Job's Tasks (stdout/stderr) will be preserved.
class LogsPolicyResponse {
  /// Optional. Additional settings for Cloud Logging. It will only take effect when the destination of LogsPolicy is set to CLOUD_LOGGING.
  final Map<String, dynamic> cloudLoggingOption;

  /// Where logs should be saved.
  final String destination;

  /// The path to which logs are saved when the destination = PATH. This can be a local file path on the VM, or under the mount point of a Persistent Disk or Filestore, or a Cloud Storage path.
  final String logsPath;

  /// Creates a new [LogsPolicyResponse].
  /// [cloudLoggingOption] Optional. Additional settings for Cloud Logging. It will only take effect when the destination of LogsPolicy is set to CLOUD_LOGGING.
  /// [destination] Where logs should be saved.
  /// [logsPath] The path to which logs are saved when the destination = PATH. This can be a local file path on the VM, or under the mount point of a Persistent Disk or Filestore, or a Cloud Storage path.
  LogsPolicyResponse({
    required this.cloudLoggingOption,
    required this.destination,
    required this.logsPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudLoggingOption'] = cloudLoggingOption;
    map['destination'] = destination;
    map['logsPath'] = logsPath;
    return map;
  }

  factory LogsPolicyResponse.fromMap(Map<String, dynamic> map) {
    return LogsPolicyResponse(
      cloudLoggingOption:
          (map['cloudLoggingOption'] as Map).cast<String, dynamic>(),
      destination: map['destination'] as String,
      logsPath: map['logsPath'] as String,
    );
  }
}
