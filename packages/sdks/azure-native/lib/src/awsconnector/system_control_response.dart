// ignore_for_file: unused_element, unnecessary_cast


/// Definition of SystemControl
class SystemControlResponse {
  /// The namespaced kernel parameter to set a ``value`` for.
  final String? namespace;
  /// The namespaced kernel parameter to set a ``value`` for. Valid IPC namespace values: ``'kernel.msgmax' | 'kernel.msgmnb' | 'kernel.msgmni' | 'kernel.sem' | 'kernel.shmall' | 'kernel.shmmax' | 'kernel.shmmni' | 'kernel.shm_rmid_forced'``, and ``Sysctls`` that start with ``'fs.mqueue.*'``  Valid network namespace values: ``Sysctls`` that start with ``'net.*'``  All of these values are supported by Fargate.
  final String? value;

  /// Creates a new [SystemControlResponse].
  /// [namespace] The namespaced kernel parameter to set a ``value`` for.
  /// [value] The namespaced kernel parameter to set a ``value`` for. Valid IPC namespace values: ``'kernel.msgmax' | 'kernel.msgmnb' | 'kernel.msgmni' | 'kernel.sem' | 'kernel.shmall' | 'kernel.shmmax' | 'kernel.shmmni' | 'kernel.shm_rmid_forced'``, and ``Sysctls`` that start with ``'fs.mqueue.*'``  Valid network namespace values: ``Sysctls`` that start with ``'net.*'``  All of these values are supported by Fargate.
  SystemControlResponse({
    this.namespace,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': ?namespace,
      'value': ?value,
    };
  }

  factory SystemControlResponse.fromMap(Map<String, dynamic> map) {
    return SystemControlResponse(
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

