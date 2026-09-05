// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DefaultPatchBaseline resources.
class DefaultPatchBaselineState {
  /// ID of the patch baseline.
  /// Can be an ID or an ARN.
  /// When specifying an AWS-provided patch baseline, must be the ARN.
  final pulumi.Input<String?>? baselineId;
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
  final pulumi.Input<String?>? operatingSystem;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [DefaultPatchBaselineState].
  /// [baselineId] ID of the patch baseline.
  /// [operatingSystem] The operating system the patch baseline applies to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const DefaultPatchBaselineState({
    this.baselineId,
    this.operatingSystem,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselineId': ?baselineId,
      'operatingSystem': ?operatingSystem,
      'region': ?region,
    };
  }

  factory DefaultPatchBaselineState.fromMap(Map<String, dynamic> map) {
    return DefaultPatchBaselineState(
      baselineId: (() { final guardedValue = map['baselineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operatingSystem: (() { final guardedValue = map['operatingSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
