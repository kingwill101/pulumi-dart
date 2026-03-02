// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StaticStringRoutingEnrichmentResponse {
  /// Static routing enrichment key.
  final pulumi.Input<String>? key;
  /// String type routing enrichment value.
  final pulumi.Input<String>? value;
  /// Static routing enrichment value type. For e.g. this property value can be 'String'.
  /// Expected value is 'String'.
  final pulumi.Input<String> valueType;

  /// Creates a new [StaticStringRoutingEnrichmentResponse].
  /// [key] Static routing enrichment key.
  /// [value] String type routing enrichment value.
  /// [valueType] Static routing enrichment value type. For e.g. this property value can be 'String'.
  StaticStringRoutingEnrichmentResponse({
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

  factory StaticStringRoutingEnrichmentResponse.fromMap(Map<String, dynamic> map) {
    return StaticStringRoutingEnrichmentResponse(
      key: map['key'] == null ? null : (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
      valueType: (map['valueType'] as String).input(),
    );
  }
}

