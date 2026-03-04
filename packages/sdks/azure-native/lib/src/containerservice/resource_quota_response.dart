// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource quota for the namespace.
class ResourceQuotaResponse {
  /// CPU limit of the namespace in one-thousandth CPU form. See [CPU resource units](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#meaning-of-cpu) for more details.
  final pulumi.Input<String>? cpuLimit;

  /// CPU request of the namespace in one-thousandth CPU form. See [CPU resource units](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#meaning-of-cpu) for more details.
  final pulumi.Input<String>? cpuRequest;

  /// Memory limit of the namespace in the power-of-two equivalents form: Ei, Pi, Ti, Gi, Mi, Ki. See [Memory resource units](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#meaning-of-memory) for more details.
  final pulumi.Input<String>? memoryLimit;

  /// Memory request of the namespace in the power-of-two equivalents form: Ei, Pi, Ti, Gi, Mi, Ki. See [Memory resource units](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#meaning-of-memory) for more details.
  final pulumi.Input<String>? memoryRequest;

  /// Creates a new [ResourceQuotaResponse].
  /// [cpuLimit] CPU limit of the namespace in one-thousandth CPU form. See [CPU resource units](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#meaning-of-cpu) for more details.
  /// [cpuRequest] CPU request of the namespace in one-thousandth CPU form. See [CPU resource units](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#meaning-of-cpu) for more details.
  /// [memoryLimit] Memory limit of the namespace in the power-of-two equivalents form: Ei, Pi, Ti, Gi, Mi, Ki. See [Memory resource units](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#meaning-of-memory) for more details.
  /// [memoryRequest] Memory request of the namespace in the power-of-two equivalents form: Ei, Pi, Ti, Gi, Mi, Ki. See [Memory resource units](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#meaning-of-memory) for more details.
  ResourceQuotaResponse({
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

  factory ResourceQuotaResponse.fromMap(Map<String, dynamic> map) {
    return ResourceQuotaResponse(
      cpuLimit: (() {
        final guardedValue = map['cpuLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cpuRequest: (() {
        final guardedValue = map['cpuRequest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      memoryLimit: (() {
        final guardedValue = map['memoryLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      memoryRequest: (() {
        final guardedValue = map['memoryRequest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
