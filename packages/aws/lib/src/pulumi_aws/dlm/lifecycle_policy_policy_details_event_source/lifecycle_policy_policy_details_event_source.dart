// ignore_for_file: unused_element, unnecessary_cast

import '../lifecycle_policy_policy_details_event_source_parameters/lifecycle_policy_policy_details_event_source_parameters.dart';

class LifecyclePolicyPolicyDetailsEventSource {
  final LifecyclePolicyPolicyDetailsEventSourceParameters parameters;

  /// The source of the event. Currently only managed CloudWatch Events rules are supported. Valid values are `MANAGED_CWE`.
  final String type;

  LifecyclePolicyPolicyDetailsEventSource({
    required this.parameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parameters'] = parameters.toMap();
    map['type'] = type;
    return map;
  }

  factory LifecyclePolicyPolicyDetailsEventSource.fromMap(
      Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsEventSource(
      parameters: LifecyclePolicyPolicyDetailsEventSourceParameters.fromMap(
          (map['parameters'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
