// ignore_for_file: unused_element, unnecessary_cast


/// Resource quota for the namespace.
class ResourceQuota {
  /// CPU limit of the namespace in one-thousandth CPU form. See [CPU resource units](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#meaning-of-cpu) for more details.
  final String? cpuLimit;
  /// CPU request of the namespace in one-thousandth CPU form. See [CPU resource units](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#meaning-of-cpu) for more details.
  final String? cpuRequest;
  /// Memory limit of the namespace in the power-of-two equivalents form: Ei, Pi, Ti, Gi, Mi, Ki. See [Memory resource units](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#meaning-of-memory) for more details.
  final String? memoryLimit;
  /// Memory request of the namespace in the power-of-two equivalents form: Ei, Pi, Ti, Gi, Mi, Ki. See [Memory resource units](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#meaning-of-memory) for more details.
  final String? memoryRequest;

  /// Creates a new [ResourceQuota].
  /// [cpuLimit] CPU limit of the namespace in one-thousandth CPU form. See [CPU resource units](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#meaning-of-cpu) for more details.
  /// [cpuRequest] CPU request of the namespace in one-thousandth CPU form. See [CPU resource units](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#meaning-of-cpu) for more details.
  /// [memoryLimit] Memory limit of the namespace in the power-of-two equivalents form: Ei, Pi, Ti, Gi, Mi, Ki. See [Memory resource units](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#meaning-of-memory) for more details.
  /// [memoryRequest] Memory request of the namespace in the power-of-two equivalents form: Ei, Pi, Ti, Gi, Mi, Ki. See [Memory resource units](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#meaning-of-memory) for more details.
  ResourceQuota({
    this.cpuLimit,
    this.cpuRequest,
    this.memoryLimit,
    this.memoryRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuLimit': ?cpuLimit,
      'cpuRequest': ?cpuRequest,
      'memoryLimit': ?memoryLimit,
      'memoryRequest': ?memoryRequest,
    };
  }

  factory ResourceQuota.fromMap(Map<String, dynamic> map) {
    return ResourceQuota(
      cpuLimit: map['cpuLimit'] == null ? null : map['cpuLimit'] as String,
      cpuRequest: map['cpuRequest'] == null ? null : map['cpuRequest'] as String,
      memoryLimit: map['memoryLimit'] == null ? null : map['memoryLimit'] as String,
      memoryRequest: map['memoryRequest'] == null ? null : map['memoryRequest'] as String,
    );
  }
}

