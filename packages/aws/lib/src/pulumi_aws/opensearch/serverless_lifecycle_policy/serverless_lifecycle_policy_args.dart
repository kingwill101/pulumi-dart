// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ServerlessLifecyclePolicy.
class ServerlessLifecyclePolicyArgs {
  /// Description of the policy.
  final Input<String>? description;

  /// Name of the policy.
  final Input<String>? name;

  /// JSON policy document to use as the content for the new policy.
  final Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Type of lifecycle policy. Must be `retention`.
  ///
  /// The following arguments are optional:
  final Input<String> type;

  ServerlessLifecyclePolicyArgs({
    this.description,
    this.name,
    required this.policy,
    this.region,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['type'] = type;
    return map;
  }

  factory ServerlessLifecyclePolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServerlessLifecyclePolicyArgs(
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      policy: Input.asInput<String>(map['policy']),
      region: Input.asOptionalInput<String>(map['region']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
