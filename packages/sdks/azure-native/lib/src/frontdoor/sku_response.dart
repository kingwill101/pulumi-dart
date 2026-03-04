// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The pricing tier of the web application firewall policy.
class SkuResponse {
  /// Name of the pricing tier.
  final pulumi.Input<String>? name;

  /// Creates a new [SkuResponse].
  /// [name] Name of the pricing tier.
  SkuResponse({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
