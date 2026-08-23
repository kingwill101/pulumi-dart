// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LogStorageTierPolicy resources.
class LogStorageTierPolicyState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Storage tier to set for the account. Valid values are `STANDARD` or `INTELLIGENT_TIERING`.
  final pulumi.Input<String>? storageTier;

  /// Creates a new [LogStorageTierPolicyState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [storageTier] Storage tier to set for the account. Valid values are `STANDARD` or `INTELLIGENT_TIERING`.
  const LogStorageTierPolicyState({
    this.region,
    this.storageTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'storageTier': ?storageTier,
    };
  }

  factory LogStorageTierPolicyState.fromMap(Map<String, dynamic> map) {
    return LogStorageTierPolicyState(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageTier: (() { final guardedValue = map['storageTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
