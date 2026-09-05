// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssm_get_patch_baseline_get_patch_baseline_args_doc}
/// Arguments for getPatchBaseline.
/// {@endtemplate}
/// {@macro pulumi_ssm_get_patch_baseline_get_patch_baseline_args_doc}
class GetPatchBaselineArgs {
  /// Filters the results against the baselines defaultBaseline field.
  final pulumi.Input<bool?>? defaultBaseline;
  /// Filter results by the baseline name prefix.
  final pulumi.Input<String?>? namePrefix;
  /// Specified OS for the baseline. Valid values: `AMAZON_LINUX`, `AMAZON_LINUX_2`, `UBUNTU`, `REDHAT_ENTERPRISE_LINUX`, `SUSE`, `CENTOS`, `ORACLE_LINUX`, `DEBIAN`, `MACOS`, `RASPBIAN` and `ROCKY_LINUX`.
  final pulumi.Input<String?>? operatingSystem;
  /// Owner of the baseline. Valid values: `All`, `AWS`, `Self` (the current account).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> owner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetPatchBaselineArgs].
  /// [defaultBaseline] Filters the results against the baselines defaultBaseline field.
  /// [namePrefix] Filter results by the baseline name prefix.
  /// [operatingSystem] Specified OS for the baseline. Valid values: `AMAZON_LINUX`, `AMAZON_LINUX_2`, `UBUNTU`, `REDHAT_ENTERPRISE_LINUX`, `SUSE`, `CENTOS`, `ORACLE_LINUX`, `DEBIAN`, `MACOS`, `RASPBIAN` and `ROCKY_LINUX`.
  /// [owner] Owner of the baseline. Valid values: `All`, `AWS`, `Self` (the current account).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetPatchBaselineArgs({
    this.defaultBaseline,
    this.namePrefix,
    this.operatingSystem,
    required this.owner,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultBaseline': ?defaultBaseline,
      'namePrefix': ?namePrefix,
      'operatingSystem': ?operatingSystem,
      'owner': owner,
      'region': ?region,
    };
  }

  factory GetPatchBaselineArgs.fromMap(Map<String, dynamic> map) {
    return GetPatchBaselineArgs(
      defaultBaseline: (() { final guardedValue = map['defaultBaseline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operatingSystem: (() { final guardedValue = map['operatingSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owner: pulumi.Input.fromValue(map['owner'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
