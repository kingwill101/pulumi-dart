// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatasetIntegration.
class GetDatasetIntegrationResult {
  /// ARN of the dataset integration.
  final String? arn;
  /// Timestamp when the dataset integration was created, in [RFC3339 format](https://datatracker.ietf.org/doc/html/rfc3339#section-5.8).
  final String? createdAt;
  final String? region;
  /// ARN of the IAM role associated with the dataset integration.
  final String? roleArn;
  /// Map of tags assigned to the dataset integration.
  final Map<String, String>? tags;
  /// Timestamp when the dataset integration was last updated, in [RFC3339 format](https://datatracker.ietf.org/doc/html/rfc3339#section-5.8).
  final String? updatedAt;

  /// Creates a new [GetDatasetIntegrationResult].
  /// [arn] ARN of the dataset integration.
  /// [createdAt] Timestamp when the dataset integration was created, in [RFC3339 format](https://datatracker.ietf.org/doc/html/rfc3339#section-5.8).
  /// [region] Optional.
  /// [roleArn] ARN of the IAM role associated with the dataset integration.
  /// [tags] Map of tags assigned to the dataset integration.
  /// [updatedAt] Timestamp when the dataset integration was last updated, in [RFC3339 format](https://datatracker.ietf.org/doc/html/rfc3339#section-5.8).
  const GetDatasetIntegrationResult({
    this.arn,
    this.createdAt,
    this.region,
    this.roleArn,
    this.tags,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdAt': ?createdAt,
      'region': ?region,
      'roleArn': ?roleArn,
      'tags': ?tags,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetDatasetIntegrationResult.fromMap(Map<String, dynamic> map) {
    return GetDatasetIntegrationResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
