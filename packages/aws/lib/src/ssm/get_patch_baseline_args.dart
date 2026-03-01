// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssm_get_patch_baseline_get_patch_baseline_args_doc}
/// Arguments for getPatchBaseline.
/// {@endtemplate}
/// {@macro pulumi_ssm_get_patch_baseline_get_patch_baseline_args_doc}
class GetPatchBaselineArgs {
  /// Filters the results against the baselines default_baseline field.
  final pulumi.Input<bool>? defaultBaseline;

  /// Filter results by the baseline name prefix.
  final pulumi.Input<String>? namePrefix;

  /// Specified OS for the baseline. Valid values: `AMAZON_LINUX`, `AMAZON_LINUX_2`, `UBUNTU`, `REDHAT_ENTERPRISE_LINUX`, `SUSE`, `CENTOS`, `ORACLE_LINUX`, `DEBIAN`, `MACOS`, `RASPBIAN` and `ROCKY_LINUX`.
  final pulumi.Input<String>? operatingSystem;

  /// Owner of the baseline. Valid values: `All`, `AWS`, `Self` (the current account).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> owner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetPatchBaselineArgs].
  /// [defaultBaseline] Filters the results against the baselines default_baseline field.
  /// [namePrefix] Filter results by the baseline name prefix.
  /// [operatingSystem] Specified OS for the baseline. Valid values: `AMAZON_LINUX`, `AMAZON_LINUX_2`, `UBUNTU`, `REDHAT_ENTERPRISE_LINUX`, `SUSE`, `CENTOS`, `ORACLE_LINUX`, `DEBIAN`, `MACOS`, `RASPBIAN` and `ROCKY_LINUX`.
  /// [owner] Owner of the baseline. Valid values: `All`, `AWS`, `Self` (the current account).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetPatchBaselineArgs({
    bool? defaultBaseline,
    String? namePrefix,
    String? operatingSystem,
    required String owner,
    String? region,
  }) : defaultBaseline = pulumi.Input.asOptionalInput<bool>(defaultBaseline),
       namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
       operatingSystem = pulumi.Input.asOptionalInput<String>(operatingSystem),
       owner = pulumi.Input.asInput<String>(owner),
       region = pulumi.Input.asOptionalInput<String>(region);

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
      defaultBaseline: map['defaultBaseline'] == null
          ? null
          : map['defaultBaseline'] as bool,
      namePrefix: map['namePrefix'] == null
          ? null
          : map['namePrefix'] as String,
      operatingSystem: map['operatingSystem'] == null
          ? null
          : map['operatingSystem'] as String,
      owner: map['owner'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
