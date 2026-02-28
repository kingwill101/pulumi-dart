// ignore_for_file: unused_element, unnecessary_cast

/// ResourceRequirements describes the compute resource requirements.
class ResourceRequirements {
  /// Limits describes the maximum amount of compute resources allowed. Only 'cpu' and 'memory' keys are supported. * For supported 'cpu' values, go to https://cloud.google.com/run/docs/configuring/cpu. * For supported 'memory' values and syntax, go to https://cloud.google.com/run/docs/configuring/memory-limits
  final Map<String, String>? limits;

  /// Requests describes the minimum amount of compute resources required. Only `cpu` and `memory` are supported. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. * For supported 'cpu' values, go to https://cloud.google.com/run/docs/configuring/cpu. * For supported 'memory' values and syntax, go to https://cloud.google.com/run/docs/configuring/memory-limits
  final Map<String, String>? requests;

  /// Creates a new [ResourceRequirements].
  /// [limits] Limits describes the maximum amount of compute resources allowed. Only 'cpu' and 'memory' keys are supported. * For supported 'cpu' values, go to https://cloud.google.com/run/docs/configuring/cpu. * For supported 'memory' values and syntax, go to https://cloud.google.com/run/docs/configuring/memory-limits
  /// [requests] Requests describes the minimum amount of compute resources required. Only `cpu` and `memory` are supported. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. * For supported 'cpu' values, go to https://cloud.google.com/run/docs/configuring/cpu. * For supported 'memory' values and syntax, go to https://cloud.google.com/run/docs/configuring/memory-limits
  ResourceRequirements({
    this.limits,
    this.requests,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final limitsValue = limits;
    if (limitsValue != null) {
      map['limits'] = limitsValue;
    }
    final requestsValue = requests;
    if (requestsValue != null) {
      map['requests'] = requestsValue;
    }
    return map;
  }

  factory ResourceRequirements.fromMap(Map<String, dynamic> map) {
    return ResourceRequirements(
      limits: map['limits'] == null
          ? null
          : (map['limits'] as Map).cast<String, String>(),
      requests: map['requests'] == null
          ? null
          : (map['requests'] as Map).cast<String, String>(),
    );
  }
}
