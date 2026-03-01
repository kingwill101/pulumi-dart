// ignore_for_file: unused_element, unnecessary_cast


class HttpIncomingResponseHeaderModificationRuleResponseHeaderModification {
  /// The response header name.
  final String name;
  /// Operation method. Possible values:
  final String operation;
  /// The value type. Value range:
  final String? type;
  /// The response header value.
  final String? value;

  /// Creates a new [HttpIncomingResponseHeaderModificationRuleResponseHeaderModification].
  /// [name] The response header name.
  /// [operation] Operation method. Possible values:
  /// [type] The value type. Value range:
  /// [value] The response header value.
  HttpIncomingResponseHeaderModificationRuleResponseHeaderModification({
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

  factory HttpIncomingResponseHeaderModificationRuleResponseHeaderModification.fromMap(Map<String, dynamic> map) {
    return HttpIncomingResponseHeaderModificationRuleResponseHeaderModification(
      name: map['name'] as String,
      operation: map['operation'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

