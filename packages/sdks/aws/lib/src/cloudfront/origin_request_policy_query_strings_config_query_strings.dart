// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OriginRequestPolicyQueryStringsConfigQueryStrings {
  final pulumi.Input<List<String>>? items;

  /// Creates a new [OriginRequestPolicyQueryStringsConfigQueryStrings].
  /// [items] Optional.
  OriginRequestPolicyQueryStringsConfigQueryStrings({
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items,
    };
  }

  factory OriginRequestPolicyQueryStringsConfigQueryStrings.fromMap(Map<String, dynamic> map) {
    return OriginRequestPolicyQueryStringsConfigQueryStrings(
      items: map['items'] == null ? null : ((map['items'] as List).cast<String>()).input(),
    );
  }
}

