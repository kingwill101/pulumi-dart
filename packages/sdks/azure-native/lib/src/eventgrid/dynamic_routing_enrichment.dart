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
  DynamicRoutingEnrichment({
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
      key: map['key'] == null ? null : (map['key']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

