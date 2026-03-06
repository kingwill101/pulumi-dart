// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OriginRequestPolicyQueryStringsConfigQueryStrings {
  final pulumi.Input<List<String>>? items;

  /// Creates a new [OriginRequestPolicyQueryStringsConfigQueryStrings].
  /// [items] Optional.
  const OriginRequestPolicyQueryStringsConfigQueryStrings({
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items,
    };
  }

  factory OriginRequestPolicyQueryStringsConfigQueryStrings.fromMap(Map<String, dynamic> map) {
    return OriginRequestPolicyQueryStringsConfigQueryStrings(
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

