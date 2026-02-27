// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAlias.
class GetAliasSfnArgs {
  /// Description of state machine alias.
  final pulumi.Input<String>? description;

  /// Name of the State Machine alias.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of the State Machine.
  final pulumi.Input<String> statemachineArn;

  GetAliasSfnArgs({
    this.description,
    required this.name,
    this.region,
    required this.statemachineArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['statemachineArn'] = statemachineArn;
    return map;
  }

  factory GetAliasSfnArgs.fromMap(Map<String, dynamic> map) {
    return GetAliasSfnArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      statemachineArn: pulumi.Input.asInput<String>(map['statemachineArn']),
    );
  }
}
