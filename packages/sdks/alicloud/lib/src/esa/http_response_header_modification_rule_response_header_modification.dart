// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HttpResponseHeaderModificationRuleResponseHeaderModification {
  /// The response header name.
  final pulumi.Input<String> name;
  /// Operation method. Possible values:
  final pulumi.Input<String> operation;
  /// The value type. Value range:
  final pulumi.Input<String>? type;
  /// The response header value.
  final pulumi.Input<String>? value;

  /// Creates a new [HttpResponseHeaderModificationRuleResponseHeaderModification].
  /// [name] The response header name.
  /// [operation] Operation method. Possible values:
  /// [type] The value type. Value range:
  /// [value] The response header value.
  const HttpResponseHeaderModificationRuleResponseHeaderModification({
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

  factory HttpResponseHeaderModificationRuleResponseHeaderModification.fromMap(Map<String, dynamic> map) {
    return HttpResponseHeaderModificationRuleResponseHeaderModification(
      name: pulumi.Input.fromValue(map['name'] as String),
      operation: pulumi.Input.fromValue(map['operation'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

