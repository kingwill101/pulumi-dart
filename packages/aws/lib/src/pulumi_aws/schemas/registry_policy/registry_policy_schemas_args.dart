// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RegistryPolicy.
class RegistryPolicySchemasArgs {
  /// Resource Policy for EventBridge Schema Registry
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Name of EventBridge Schema Registry
  final pulumi.Input<String> registryName;

  RegistryPolicySchemasArgs({
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

  factory RegistryPolicySchemasArgs.fromMap(Map<String, dynamic> map) {
    return RegistryPolicySchemasArgs(
      policy: pulumi.Input.asInput<String>(map['policy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      registryName: pulumi.Input.asInput<String>(map['registryName']),
    );
  }
}
