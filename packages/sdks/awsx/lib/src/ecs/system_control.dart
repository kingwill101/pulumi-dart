// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SystemControl {
  /// The namespaced kernel parameter name.
  final pulumi.Input<String?>? namespace;
  /// The value assigned to the parameter.
  final pulumi.Input<String?>? value;

  /// Creates a new [SystemControl].
  /// [namespace] The namespaced kernel parameter name.
  /// [value] The value assigned to the parameter.
  const SystemControl({
    this.namespace,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': ?namespace,
      'value': ?value,
    };
  }

  factory SystemControl.fromMap(Map<String, dynamic> map) {
    return SystemControl(
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
