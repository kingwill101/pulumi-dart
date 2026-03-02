// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Open authentication policy claim.
class OpenAuthenticationPolicyClaim {
  /// The name of the claim.
  final pulumi.Input<String>? name;
  /// The value of the claim.
  final pulumi.Input<String>? value;

  /// Creates a new [OpenAuthenticationPolicyClaim].
  /// [name] The name of the claim.
  /// [value] The value of the claim.
  OpenAuthenticationPolicyClaim({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory OpenAuthenticationPolicyClaim.fromMap(Map<String, dynamic> map) {
    return OpenAuthenticationPolicyClaim(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

