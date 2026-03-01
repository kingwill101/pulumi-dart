// ignore_for_file: unused_element, unnecessary_cast


/// Scope map for schema in azure monitor.
class ScopeMapResponse {
  /// Scope Map Key.
  final String from;
  /// Scope Map Value.
  final String to;

  /// Creates a new [ScopeMapResponse].
  /// [from] Scope Map Key.
  /// [to] Scope Map Value.
  ScopeMapResponse({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'to': to,
    };
  }

  factory ScopeMapResponse.fromMap(Map<String, dynamic> map) {
    return ScopeMapResponse(
      from: map['from'] as String,
      to: map['to'] as String,
    );
  }
}

