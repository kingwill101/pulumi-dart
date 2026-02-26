// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RegistryPolicy.
class RegistryPolicyArgs2 {
  /// Resource Policy for EventBridge Schema Registry
  final Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name of EventBridge Schema Registry
  final Input<String> registryName;

  RegistryPolicyArgs2({
    required this.policy,
    this.region,
    required this.registryName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['registryName'] = registryName;
    return map;
  }

  factory RegistryPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return RegistryPolicyArgs2(
      policy: Input.asInput<String>(map['policy']),
      region: Input.asOptionalInput<String>(map['region']),
      registryName: Input.asInput<String>(map['registryName']),
    );
  }
}
