// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scope map for schema in azure monitor.
class ScopeMap {
  /// Scope Map Key.
  final pulumi.Input<String> from;
  /// Scope Map Value.
  final pulumi.Input<String> to;

  /// Creates a new [ScopeMap].
  /// [from] Scope Map Key.
  /// [to] Scope Map Value.
  ScopeMap({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'to': to,
    };
  }

  factory ScopeMap.fromMap(Map<String, dynamic> map) {
    return ScopeMap(
      from: (map['from'] as String).input(),
      to: (map['to'] as String).input(),
    );
  }
}

