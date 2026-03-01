// ignore_for_file: unused_element, unnecessary_cast

class GeoMatchSetGeoMatchConstraint {
  /// The type of geographical area you want AWS WAF to search for. Currently Country is the only valid value.
  final String type;

  /// The country that you want AWS WAF to search for.
  /// This is the two-letter country code, e.g., `US`, `CA`, `RU`, `CN`, etc.
  /// See [docs](https://docs.aws.amazon.com/waf/latest/APIReference/API_GeoMatchConstraint.html) for all supported values.
  final String value;

  /// Creates a new [GeoMatchSetGeoMatchConstraint].
  /// [type] The type of geographical area you want AWS WAF to search for. Currently Country is the only valid value.
  /// [value] The country that you want AWS WAF to search for.
  GeoMatchSetGeoMatchConstraint({required this.type, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type, 'value': value};
  }

  factory GeoMatchSetGeoMatchConstraint.fromMap(Map<String, dynamic> map) {
    return GeoMatchSetGeoMatchConstraint(
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}
