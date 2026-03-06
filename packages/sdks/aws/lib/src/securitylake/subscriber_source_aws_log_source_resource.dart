// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriberSourceAwsLogSourceResource {
  /// The name for a AWS source. This must be a Regionally unique value. Valid values: `ROUTE53`, `VPC_FLOW`, `SH_FINDINGS`, `CLOUD_TRAIL_MGMT`, `LAMBDA_EXECUTION`, `S3_DATA`, `EKS_AUDIT` and `WAF`.
  final pulumi.Input<String> sourceName;
  /// The version for a AWS source. This must be a Regionally unique value.
  final pulumi.Input<String>? sourceVersion;

  /// Creates a new [SubscriberSourceAwsLogSourceResource].
  /// [sourceName] The name for a AWS source. This must be a Regionally unique value. Valid values: `ROUTE53`, `VPC_FLOW`, `SH_FINDINGS`, `CLOUD_TRAIL_MGMT`, `LAMBDA_EXECUTION`, `S3_DATA`, `EKS_AUDIT` and `WAF`.
  /// [sourceVersion] The version for a AWS source. This must be a Regionally unique value.
  const SubscriberSourceAwsLogSourceResource({
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
      sourceName: pulumi.Input.fromValue(map['sourceName'] as String),
      sourceVersion: (() { final guardedValue = map['sourceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

