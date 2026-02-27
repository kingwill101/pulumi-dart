// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSigningJob.
class GetSigningJobArgs {
  /// ID of the signing job on output.
  final pulumi.Input<String> jobId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetSigningJobArgs({
    required this.jobId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jobId'] = jobId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetSigningJobArgs.fromMap(Map<String, dynamic> map) {
    return GetSigningJobArgs(
      jobId: pulumi.Input.asInput<String>(map['jobId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
