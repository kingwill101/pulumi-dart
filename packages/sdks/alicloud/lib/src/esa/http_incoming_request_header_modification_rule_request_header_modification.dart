// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HttpIncomingRequestHeaderModificationRuleRequestHeaderModification {
  /// Request Header Name.
  final pulumi.Input<String> name;
  /// Mode of operation. Value range:
  final pulumi.Input<String> operation;
  /// Value type. Value range:
  final pulumi.Input<String>? type;
  /// Request header value
  final pulumi.Input<String>? value;

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
      name: (map['name'] as String).input(),
      operation: (map['operation'] as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

