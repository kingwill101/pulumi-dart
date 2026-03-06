// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DynamicRoutingEnrichment {
  /// Dynamic routing enrichment key.
  final pulumi.Input<String>? key;
  /// Dynamic routing enrichment value.
  final pulumi.Input<String>? value;

  /// Creates a new [DynamicRoutingEnrichment].
  /// [key] Dynamic routing enrichment key.
  /// [value] Dynamic routing enrichment value.
  const DynamicRoutingEnrichment({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory DynamicRoutingEnrichment.fromMap(Map<String, dynamic> map) {
    return DynamicRoutingEnrichment(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

