// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOriginRequestPolicyCookiesConfigCookie {
  final pulumi.Input<List<String>> items;

  /// Creates a new [GetOriginRequestPolicyCookiesConfigCookie].
  /// [items] Required.
  const GetOriginRequestPolicyCookiesConfigCookie({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items,
    };
  }

  factory GetOriginRequestPolicyCookiesConfigCookie.fromMap(Map<String, dynamic> map) {
    return GetOriginRequestPolicyCookiesConfigCookie(
      items: pulumi.Input.fromValue((map['items'] as List).cast<String>()),
    );
  }
}

