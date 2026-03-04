// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Open authentication policy claim.
class OpenAuthenticationPolicyClaimResponse {
  /// The name of the claim.
  final pulumi.Input<String>? name;

  /// The value of the claim.
  final pulumi.Input<String>? value;

  /// Creates a new [OpenAuthenticationPolicyClaimResponse].
  /// [name] The name of the claim.
  /// [value] The value of the claim.
  OpenAuthenticationPolicyClaimResponse({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory OpenAuthenticationPolicyClaimResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return OpenAuthenticationPolicyClaimResponse(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
