// ignore_for_file: unused_element, unnecessary_cast

class AwsLogSourceSource {
  /// Specify the AWS account information where you want to enable Security Lake.
  /// If not specified, uses all accounts included in the Security Lake.
  final List<String>? accounts;

  /// Specify the Regions where you want to enable Security Lake.
  final List<String> regions;

  /// The name for a AWS source. This must be a Regionally unique value. Valid values: `ROUTE53`, `VPC_FLOW`, `SH_FINDINGS`, `CLOUD_TRAIL_MGMT`, `LAMBDA_EXECUTION`, `S3_DATA`, `EKS_AUDIT`, `WAF`.
  final String sourceName;

  /// The version for a AWS source.
  /// If not specified, the version will be the default.
  /// This must be a Regionally unique value.
  final String? sourceVersion;

  /// Creates a new [AwsLogSourceSource].
  /// [accounts] Specify the AWS account information where you want to enable Security Lake.
  /// [regions] Specify the Regions where you want to enable Security Lake.
  /// [sourceName] The name for a AWS source. This must be a Regionally unique value. Valid values: `ROUTE53`, `VPC_FLOW`, `SH_FINDINGS`, `CLOUD_TRAIL_MGMT`, `LAMBDA_EXECUTION`, `S3_DATA`, `EKS_AUDIT`, `WAF`.
  /// [sourceVersion] The version for a AWS source.
  AwsLogSourceSource({
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
      accounts: map['accounts'] == null
          ? null
          : (map['accounts'] as List).cast<String>(),
      regions: (map['regions'] as List).cast<String>(),
      sourceName: map['sourceName'] as String,
      sourceVersion: map['sourceVersion'] == null
          ? null
          : map['sourceVersion'] as String,
    );
  }
}
