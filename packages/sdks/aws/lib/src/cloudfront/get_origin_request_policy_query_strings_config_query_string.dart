// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOriginRequestPolicyQueryStringsConfigQueryString {
  final pulumi.Input<List<String>> items;

  /// Creates a new [GetOriginRequestPolicyQueryStringsConfigQueryString].
  /// [items] Required.
  GetOriginRequestPolicyQueryStringsConfigQueryString({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items,
    };
  }

  factory GetOriginRequestPolicyQueryStringsConfigQueryString.fromMap(Map<String, dynamic> map) {
    return GetOriginRequestPolicyQueryStringsConfigQueryString(
      items: pulumi.Input.fromValue((map['items'] as List).cast<String>()),
    );
  }
}

