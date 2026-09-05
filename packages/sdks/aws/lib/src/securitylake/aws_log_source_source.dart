// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsLogSourceSource {
  /// Specify the AWS account information where you want to enable Security Lake.
  /// If not specified, uses all accounts included in the Security Lake.
  final pulumi.Input<List<String>?>? accounts;
  /// Specify the Regions where you want to enable Security Lake.
  final pulumi.Input<List<String>> regions;
  /// The name for a AWS source. This must be a Regionally unique value. Valid values: `ROUTE53`, `VPC_FLOW`, `SH_FINDINGS`, `CLOUD_TRAIL_MGMT`, `LAMBDA_EXECUTION`, `S3_DATA`, `EKS_AUDIT`, `WAF`.
  final pulumi.Input<String> sourceName;
  /// The version for a AWS source.
  /// If not specified, the version will be the default.
  /// This must be a Regionally unique value.
  final pulumi.Input<String?>? sourceVersion;

  /// Creates a new [AwsLogSourceSource].
  /// [accounts] Specify the AWS account information where you want to enable Security Lake.
  /// [regions] Specify the Regions where you want to enable Security Lake.
  /// [sourceName] The name for a AWS source. This must be a Regionally unique value. Valid values: `ROUTE53`, `VPC_FLOW`, `SH_FINDINGS`, `CLOUD_TRAIL_MGMT`, `LAMBDA_EXECUTION`, `S3_DATA`, `EKS_AUDIT`, `WAF`.
  /// [sourceVersion] The version for a AWS source.
  const AwsLogSourceSource({
    this.accounts,
    required this.regions,
    required this.sourceName,
    this.sourceVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': ?accounts,
      'regions': regions,
      'sourceName': sourceName,
      'sourceVersion': ?sourceVersion,
    };
  }

  factory AwsLogSourceSource.fromMap(Map<String, dynamic> map) {
    return AwsLogSourceSource(
      accounts: (() { final guardedValue = map['accounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      regions: pulumi.Input.fromValue((map['regions'] as List).cast<String>()),
      sourceName: pulumi.Input.fromValue(map['sourceName'] as String),
      sourceVersion: (() { final guardedValue = map['sourceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
