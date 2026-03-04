// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StaticStringRoutingEnrichment {
  /// Static routing enrichment key.
  final pulumi.Input<String>? key;

  /// String type routing enrichment value.
  final pulumi.Input<String>? value;

  /// Static routing enrichment value type. For e.g. this property value can be 'String'.
  /// Expected value is 'String'.
  final pulumi.Input<String> valueType;

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
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      valueType: pulumi.Input.fromValue(map['valueType'] as String),
    );
  }
}
