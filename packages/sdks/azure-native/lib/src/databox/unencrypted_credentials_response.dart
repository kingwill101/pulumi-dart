// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_disk_job_secrets_response.dart';

/// Unencrypted credentials for accessing device.
class UnencryptedCredentialsResponse {
  /// Name of the job.
  final pulumi.Input<String> jobName;
  /// Secrets related to this job.
  final pulumi.Input<CustomerDiskJobSecretsResponse> jobSecrets;

  /// Creates a new [UnencryptedCredentialsResponse].
  /// [jobName] Name of the job.
  /// [jobSecrets] Secrets related to this job.
  UnencryptedCredentialsResponse({
    required this.jobName,
    required this.jobSecrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobName': jobName,
      'jobSecrets': pulumi.Input.mapInputValue<CustomerDiskJobSecretsResponse, Map<String, dynamic>>(jobSecrets, (value) => value.toMap()),
    };
  }

  factory UnencryptedCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return UnencryptedCredentialsResponse(
      jobName: pulumi.Input.fromValue(map['jobName'] as String),
      jobSecrets: pulumi.Input.fromValue(CustomerDiskJobSecretsResponse.fromMap((map['jobSecrets']! as Map).cast<String, dynamic>())),
    );
  }
}

