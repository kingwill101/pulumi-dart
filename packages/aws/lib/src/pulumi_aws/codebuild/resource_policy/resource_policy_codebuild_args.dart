// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ResourcePolicy.
class ResourcePolicyCodebuildArgs {
  /// A JSON-formatted resource policy. For more information, see [Sharing a Projec](https://docs.aws.amazon.com/codebuild/latest/userguide/project-sharing.html#project-sharing-share) and [Sharing a Report Group](https://docs.aws.amazon.com/codebuild/latest/userguide/report-groups-sharing.html#report-groups-sharing-share).
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ARN of the Project or ReportGroup resource you want to associate with a resource policy.
  final pulumi.Input<String> resourceArn;

  ResourcePolicyCodebuildArgs({
    required this.policy,
    this.region,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceArn'] = resourceArn;
    return map;
  }

  factory ResourcePolicyCodebuildArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyCodebuildArgs(
      policy: pulumi.Input.asInput<String>(map['policy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceArn: pulumi.Input.asInput<String>(map['resourceArn']),
    );
  }
}
