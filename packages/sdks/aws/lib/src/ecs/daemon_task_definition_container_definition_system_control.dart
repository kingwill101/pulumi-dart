// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DaemonTaskDefinitionContainerDefinitionSystemControl {
  /// Namespaced kernel parameter to set a value for.
  final pulumi.Input<String?>? namespace;
  /// Value for the namespaced kernel parameter.
  final pulumi.Input<String?>? value;

  /// Creates a new [DaemonTaskDefinitionContainerDefinitionSystemControl].
  /// [namespace] Namespaced kernel parameter to set a value for.
  /// [value] Value for the namespaced kernel parameter.
  const DaemonTaskDefinitionContainerDefinitionSystemControl({
    this.namespace,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': ?namespace,
      'value': ?value,
    };
  }

  factory DaemonTaskDefinitionContainerDefinitionSystemControl.fromMap(Map<String, dynamic> map) {
    return DaemonTaskDefinitionContainerDefinitionSystemControl(
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
