// ignore_for_file: unused_element, unnecessary_cast


class SubscriberSourceAwsLogSourceResource {
  /// The name for a AWS source. This must be a Regionally unique value. Valid values: `ROUTE53`, `VPC_FLOW`, `SH_FINDINGS`, `CLOUD_TRAIL_MGMT`, `LAMBDA_EXECUTION`, `S3_DATA`, `EKS_AUDIT` and `WAF`.
  final String sourceName;
  /// The version for a AWS source. This must be a Regionally unique value.
  final String? sourceVersion;

  /// Creates a new [SubscriberSourceAwsLogSourceResource].
  /// [sourceName] The name for a AWS source. This must be a Regionally unique value. Valid values: `ROUTE53`, `VPC_FLOW`, `SH_FINDINGS`, `CLOUD_TRAIL_MGMT`, `LAMBDA_EXECUTION`, `S3_DATA`, `EKS_AUDIT` and `WAF`.
  /// [sourceVersion] The version for a AWS source. This must be a Regionally unique value.
  SubscriberSourceAwsLogSourceResource({
    required this.sourceName,
    this.sourceVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceName': sourceName,
      'sourceVersion': ?sourceVersion,
    };
  }

  factory SubscriberSourceAwsLogSourceResource.fromMap(Map<String, dynamic> map) {
    return SubscriberSourceAwsLogSourceResource(
      sourceName: map['sourceName'] as String,
      sourceVersion: map['sourceVersion'] == null ? null : map['sourceVersion'] as String,
    );
  }
}

