// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Unencrypted credentials for accessing device.
class UnencryptedCredentialsResponse {
  /// Name of the job.
  final pulumi.Input<String> jobName;
  /// Secrets related to this job.
  final pulumi.Input<dynamic> jobSecrets;

  /// Creates a new [UnencryptedCredentialsResponse].
  /// [jobName] Name of the job.
  /// [jobSecrets] Secrets related to this job.
  const UnencryptedCredentialsResponse({
    required this.jobName,
    required this.jobSecrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobName': jobName,
      'jobSecrets': jobSecrets,
    };
  }

  factory UnencryptedCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return UnencryptedCredentialsResponse(
      jobName: pulumi.Input.fromValue(map['jobName'] as String),
      jobSecrets: pulumi.Input.fromValue(map['jobSecrets']),
    );
  }
}
