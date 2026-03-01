// ignore_for_file: unused_element, unnecessary_cast


class StaticStringRoutingEnrichment {
  /// Static routing enrichment key.
  final String? key;
  /// String type routing enrichment value.
  final String? value;
  /// Static routing enrichment value type. For e.g. this property value can be 'String'.
  /// Expected value is 'String'.
  final String valueType;

  /// Creates a new [StaticStringRoutingEnrichment].
  /// [key] Static routing enrichment key.
  /// [value] String type routing enrichment value.
  /// [valueType] Static routing enrichment value type. For e.g. this property value can be 'String'.
  StaticStringRoutingEnrichment({
    this.key,
    this.value,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
      'valueType': valueType,
    };
  }

  factory StaticStringRoutingEnrichment.fromMap(Map<String, dynamic> map) {
    return StaticStringRoutingEnrichment(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
      valueType: map['valueType'] as String,
    );
  }
}

