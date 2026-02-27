// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DefaultPatchBaseline.
class DefaultPatchBaselineArgs {
  /// ID of the patch baseline.
  /// Can be an ID or an ARN.
  /// When specifying an AWS-provided patch baseline, must be the ARN.
  final pulumi.Input<String> baselineId;

  /// The operating system the patch baseline applies to.
  /// Valid values are
  /// `AMAZON_LINUX`,
  /// `AMAZON_LINUX_2`,
  /// `AMAZON_LINUX_2022`,
  /// `AMAZON_LINUX_2023`,
  /// `CENTOS`,
  /// `DEBIAN`,
  /// `MACOS`,
  /// `ORACLE_LINUX`,
  /// `RASPBIAN`,
  /// `REDHAT_ENTERPRISE_LINUX`,
  /// `ROCKY_LINUX`,
  /// `SUSE`,
  /// `UBUNTU`, and
  /// `WINDOWS`.
  final pulumi.Input<String> operatingSystem;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  DefaultPatchBaselineArgs({
    required this.baselineId,
    required this.operatingSystem,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['baselineId'] = baselineId;
    map['operatingSystem'] = operatingSystem;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory DefaultPatchBaselineArgs.fromMap(Map<String, dynamic> map) {
    return DefaultPatchBaselineArgs(
      baselineId: pulumi.Input.asInput<String>(map['baselineId']),
      operatingSystem: pulumi.Input.asInput<String>(map['operatingSystem']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
