// ignore_for_file: unused_element, unnecessary_cast


class HttpIncomingRequestHeaderModificationRuleRequestHeaderModification {
  /// Request Header Name.
  final String name;
  /// Mode of operation. Value range:
  final String operation;
  /// Value type. Value range:
  final String? type;
  /// Request header value
  final String? value;

  /// Creates a new [HttpIncomingRequestHeaderModificationRuleRequestHeaderModification].
  /// [name] Request Header Name.
  /// [operation] Mode of operation. Value range:
  /// [type] Value type. Value range:
  /// [value] Request header value
  HttpIncomingRequestHeaderModificationRuleRequestHeaderModification({
    required this.name,
    required this.operation,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'operation': operation,
      'type': ?type,
      'value': ?value,
    };
  }

  factory HttpIncomingRequestHeaderModificationRuleRequestHeaderModification.fromMap(Map<String, dynamic> map) {
    return HttpIncomingRequestHeaderModificationRuleRequestHeaderModification(
      name: map['name'] as String,
      operation: map['operation'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

