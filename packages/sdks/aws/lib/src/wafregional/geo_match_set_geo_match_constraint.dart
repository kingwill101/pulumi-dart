// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GeoMatchSetGeoMatchConstraint {
  /// Type of geographical area you want AWS WAF to search for. Currently `Country` is the only valid value.
  final pulumi.Input<String> type;
  /// Two-letter country code that you want AWS WAF to search for, e.g., `US`, `CA`, `RU`, `CN`. See [docs](https://docs.aws.amazon.com/waf/latest/APIReference/API_GeoMatchConstraint.html) for all supported values.
  final pulumi.Input<String> value;

  /// Creates a new [GeoMatchSetGeoMatchConstraint].
  /// [type] Type of geographical area you want AWS WAF to search for. Currently `Country` is the only valid value.
  /// [value] Two-letter country code that you want AWS WAF to search for, e.g., `US`, `CA`, `RU`, `CN`. See [docs](https://docs.aws.amazon.com/waf/latest/APIReference/API_GeoMatchConstraint.html) for all supported values.
  const GeoMatchSetGeoMatchConstraint({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory GeoMatchSetGeoMatchConstraint.fromMap(Map<String, dynamic> map) {
    return GeoMatchSetGeoMatchConstraint(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
