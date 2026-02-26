// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAlias.
class GetAliasArgs3 {
  /// Description of state machine alias.
  final Input<String>? description;

  /// Name of the State Machine alias.
  final Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of the State Machine.
  final Input<String> statemachineArn;

  GetAliasArgs3({
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

  factory GetAliasArgs3.fromMap(Map<String, dynamic> map) {
    return GetAliasArgs3(
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      statemachineArn: Input.asInput<String>(map['statemachineArn']),
    );
  }
}
