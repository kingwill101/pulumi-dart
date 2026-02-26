// ignore_for_file: unused_element, unnecessary_cast

class ServiceLbPoliciesAutoCapacityDrain {
  /// Optional. If set to 'True', an unhealthy MIG/NEG will be set as drained. - An MIG/NEG is considered unhealthy if less than 25% of the instances/endpoints in the MIG/NEG are healthy. - This option will never result in draining more than 50% of the configured IGs/NEGs for the Backend Service.
  final bool? enable;

  ServiceLbPoliciesAutoCapacityDrain({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableValue = enable;
    if (enableValue != null) {
      map['enable'] = enableValue;
    }
    return map;
  }

  factory ServiceLbPoliciesAutoCapacityDrain.fromMap(Map<String, dynamic> map) {
    return ServiceLbPoliciesAutoCapacityDrain(
      enable: map['enable'] == null ? null : map['enable'] as bool,
    );
  }
}
