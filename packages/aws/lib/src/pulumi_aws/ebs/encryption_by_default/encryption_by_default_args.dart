// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EncryptionByDefault.
class EncryptionByDefaultArgs {
  /// Whether or not default EBS encryption is enabled. Valid values are `true` or `false`. Defaults to `true`.
  final pulumi.Input<bool>? enabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  EncryptionByDefaultArgs({
    this.enabled,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory EncryptionByDefaultArgs.fromMap(Map<String, dynamic> map) {
    return EncryptionByDefaultArgs(
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
