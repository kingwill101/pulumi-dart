// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SystemControl
class SystemControl {
  /// The namespaced kernel parameter to set a ``value`` for.
  final pulumi.Input<String?>? namespace;
  /// The namespaced kernel parameter to set a ``value`` for. Valid IPC namespace values: ``'kernel.msgmax' | 'kernel.msgmnb' | 'kernel.msgmni' | 'kernel.sem' | 'kernel.shmall' | 'kernel.shmmax' | 'kernel.shmmni' | 'kernel.shm_rmid_forced'``, and ``Sysctls`` that start with ``'fs.mqueue.*'``  Valid network namespace values: ``Sysctls`` that start with ``'net.*'``  All of these values are supported by Fargate.
  final pulumi.Input<String?>? value;

  /// Creates a new [SystemControl].
  /// [namespace] The namespaced kernel parameter to set a ``value`` for.
  /// [value] The namespaced kernel parameter to set a ``value`` for. Valid IPC namespace values: ``'kernel.msgmax' | 'kernel.msgmnb' | 'kernel.msgmni' | 'kernel.sem' | 'kernel.shmall' | 'kernel.shmmax' | 'kernel.shmmni' | 'kernel.shm_rmid_forced'``, and ``Sysctls`` that start with ``'fs.mqueue.*'``  Valid network namespace values: ``Sysctls`` that start with ``'net.*'``  All of these values are supported by Fargate.
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
