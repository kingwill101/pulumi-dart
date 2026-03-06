// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OriginRequestPolicyCookiesConfigCookies {
  final pulumi.Input<List<String>>? items;

  /// Creates a new [OriginRequestPolicyCookiesConfigCookies].
  /// [items] Optional.
  const OriginRequestPolicyCookiesConfigCookies({
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items,
    };
  }

  factory OriginRequestPolicyCookiesConfigCookies.fromMap(Map<String, dynamic> map) {
    return OriginRequestPolicyCookiesConfigCookies(
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

