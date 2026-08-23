// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOriginRequestPolicyHeadersConfigHeader {
  final pulumi.Input<List<String>> items;

  /// Creates a new [GetOriginRequestPolicyHeadersConfigHeader].
  /// [items] Required.
  const GetOriginRequestPolicyHeadersConfigHeader({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items,
    };
  }

  factory GetOriginRequestPolicyHeadersConfigHeader.fromMap(Map<String, dynamic> map) {
    return GetOriginRequestPolicyHeadersConfigHeader(
      items: pulumi.Input.fromValue((map['items'] as List).cast<String>()),
    );
  }
}
