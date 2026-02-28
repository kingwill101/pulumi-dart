// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_signer_get_signing_job_get_signing_job_args_doc}
/// Arguments for getSigningJob.
/// {@endtemplate}
/// {@macro pulumi_signer_get_signing_job_get_signing_job_args_doc}
class GetSigningJobArgs {
  /// ID of the signing job on output.
  final pulumi.Input<String> jobId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetSigningJobArgs].
  /// [jobId] ID of the signing job on output.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetSigningJobArgs({
    required String jobId,
    String? region,
  }) :
      jobId = pulumi.Input.asInput<String>(jobId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': jobId,
      'region': ?region,
    };
  }

  factory GetSigningJobArgs.fromMap(Map<String, dynamic> map) {
    return GetSigningJobArgs(
      jobId: map['jobId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

