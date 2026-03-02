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
  HttpResponseHeaderModificationRuleResponseHeaderModification({
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
      name: (map['name'] as String).input(),
      operation: (map['operation'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

