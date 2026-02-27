// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPatchBaseline.
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

  GetPatchBaselineArgs({
    this.defaultBaseline,
    this.namePrefix,
    this.operatingSystem,
    required this.owner,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultBaselineValue = defaultBaseline;
    if (defaultBaselineValue != null) {
      map['defaultBaseline'] = defaultBaselineValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final operatingSystemValue = operatingSystem;
    if (operatingSystemValue != null) {
      map['operatingSystem'] = operatingSystemValue;
    }
    map['owner'] = owner;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetPatchBaselineArgs.fromMap(Map<String, dynamic> map) {
    return GetPatchBaselineArgs(
      defaultBaseline:
          pulumi.Input.asOptionalInput<bool>(map['defaultBaseline']),
      namePrefix: pulumi.Input.asOptionalInput<String>(map['namePrefix']),
      operatingSystem:
          pulumi.Input.asOptionalInput<String>(map['operatingSystem']),
      owner: pulumi.Input.asInput<String>(map['owner']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
