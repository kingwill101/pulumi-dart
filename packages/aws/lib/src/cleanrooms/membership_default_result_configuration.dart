// ignore_for_file: unused_element, unnecessary_cast

import 'membership_default_result_configuration_output_configuration.dart';

class MembershipDefaultResultConfiguration {
  final MembershipDefaultResultConfigurationOutputConfiguration outputConfiguration;
  /// The ARN of the IAM role which will be used to create the membership.
  /// - `output_configuration.s3.bucket` - (Required) - The name of the S3 bucket where the query results will be stored.
  /// - `output_configuration.s3.result_format` - (Required) - The format of the query results. Valid values are `PARQUET` and `CSV`.
  /// - `output_configuration.s3.key_prefix` - (Optional) - The prefix used for the query results.
  final String? roleArn;

  /// Creates a new [MembershipDefaultResultConfiguration].
  /// [outputConfiguration] Required.
  /// [roleArn] The ARN of the IAM role which will be used to create the membership.
  MembershipDefaultResultConfiguration({
    required this.outputConfiguration,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputConfiguration': outputConfiguration.toMap(),
      'roleArn': ?roleArn,
    };
  }

  factory MembershipDefaultResultConfiguration.fromMap(Map<String, dynamic> map) {
    return MembershipDefaultResultConfiguration(
      outputConfiguration: MembershipDefaultResultConfigurationOutputConfiguration.fromMap((map['outputConfiguration'] as Map).cast<String, dynamic>()),
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
    );
  }
}

