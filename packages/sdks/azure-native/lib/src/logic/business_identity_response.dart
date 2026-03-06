// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The integration account partner's business identity.
class BusinessIdentityResponse {
  /// The business identity qualifier e.g. as2identity, ZZ, ZZZ, 31, 32
  final pulumi.Input<String> qualifier;
  /// The user defined business identity value.
  final pulumi.Input<String> value;

  /// Creates a new [BusinessIdentityResponse].
  /// [qualifier] The business identity qualifier e.g. as2identity, ZZ, ZZZ, 31, 32
  /// [value] The user defined business identity value.
  const BusinessIdentityResponse({
    required this.qualifier,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'qualifier': qualifier,
      'value': value,
    };
  }

  factory BusinessIdentityResponse.fromMap(Map<String, dynamic> map) {
    return BusinessIdentityResponse(
      qualifier: pulumi.Input.fromValue(map['qualifier'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

