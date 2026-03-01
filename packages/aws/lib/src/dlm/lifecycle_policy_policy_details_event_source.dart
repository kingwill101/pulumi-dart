// ignore_for_file: unused_element, unnecessary_cast

import 'lifecycle_policy_policy_details_event_source_parameters.dart';

class LifecyclePolicyPolicyDetailsEventSource {
  final LifecyclePolicyPolicyDetailsEventSourceParameters parameters;

  /// The source of the event. Currently only managed CloudWatch Events rules are supported. Valid values are `MANAGED_CWE`.
  final String type;

  /// Creates a new [LifecyclePolicyPolicyDetailsEventSource].
  /// [parameters] Required.
  /// [type] The source of the event. Currently only managed CloudWatch Events rules are supported. Valid values are `MANAGED_CWE`.
  LifecyclePolicyPolicyDetailsEventSource({
    required this.parameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'parameters': parameters.toMap(), 'type': type};
  }

  factory LifecyclePolicyPolicyDetailsEventSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return LifecyclePolicyPolicyDetailsEventSource(
      parameters: LifecyclePolicyPolicyDetailsEventSourceParameters.fromMap(
        (map['parameters'] as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
