// ignore_for_file: unused_element, unnecessary_cast

import 'stream_rule_set_object_filter_source_object_identifier.dart';

class StreamRuleSetObjectFilter {
  /// Specific source object identifier.
  /// Structure is documented below.
  final StreamRuleSetObjectFilterSourceObjectIdentifier? sourceObjectIdentifier;

  /// Creates a new [StreamRuleSetObjectFilter].
  /// [sourceObjectIdentifier] Specific source object identifier.
  StreamRuleSetObjectFilter({this.sourceObjectIdentifier});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceObjectIdentifier': ?sourceObjectIdentifier == null
          ? null
          : sourceObjectIdentifier!.toMap(),
    };
  }

  factory StreamRuleSetObjectFilter.fromMap(Map<String, dynamic> map) {
    return StreamRuleSetObjectFilter(
      sourceObjectIdentifier: map['sourceObjectIdentifier'] == null
          ? null
          : StreamRuleSetObjectFilterSourceObjectIdentifier.fromMap(
              (map['sourceObjectIdentifier'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
