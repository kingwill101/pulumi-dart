// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scope map for schema in azure monitor.
class ScopeMapResponse {
  /// Scope Map Key.
  final pulumi.Input<String> from;

  /// Scope Map Value.
  final pulumi.Input<String> to;

  /// Creates a new [ScopeMapResponse].
  /// [from] Scope Map Key.
  /// [to] Scope Map Value.
  ScopeMapResponse({required this.from, required this.to});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'from': from, 'to': to};
  }

  factory ScopeMapResponse.fromMap(Map<String, dynamic> map) {
    return ScopeMapResponse(
      from: pulumi.Input.fromValue(map['from'] as String),
      to: pulumi.Input.fromValue(map['to'] as String),
    );
  }
}
