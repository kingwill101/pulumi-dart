// ignore_for_file: unused_element, unnecessary_cast

import 'logs_policy_destination.dart';

/// LogsPolicy describes how outputs from a Job's Tasks (stdout/stderr) will be preserved.
class LogsPolicy {
  /// Optional. Additional settings for Cloud Logging. It will only take effect when the destination of LogsPolicy is set to CLOUD_LOGGING.
  final Map<String, dynamic>? cloudLoggingOption;

  /// Where logs should be saved.
  final LogsPolicyDestination? destination;

  /// The path to which logs are saved when the destination = PATH. This can be a local file path on the VM, or under the mount point of a Persistent Disk or Filestore, or a Cloud Storage path.
  final String? logsPath;

  LogsPolicy({
    this.cloudLoggingOption,
    this.destination,
    this.logsPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudLoggingOptionValue = cloudLoggingOption;
    if (cloudLoggingOptionValue != null) {
      map['cloudLoggingOption'] = cloudLoggingOptionValue;
    }
    final destinationValue = destination;
    if (destinationValue != null) {
      map['destination'] = destinationValue.value;
    }
    final logsPathValue = logsPath;
    if (logsPathValue != null) {
      map['logsPath'] = logsPathValue;
    }
    return map;
  }

  factory LogsPolicy.fromMap(Map<String, dynamic> map) {
    return LogsPolicy(
      cloudLoggingOption: map['cloudLoggingOption'] == null
          ? null
          : (map['cloudLoggingOption'] as Map).cast<String, dynamic>(),
      destination: map['destination'] == null
          ? null
          : LogsPolicyDestination.fromValue(map['destination'] as String),
      logsPath: map['logsPath'] == null ? null : map['logsPath'] as String,
    );
  }
}
