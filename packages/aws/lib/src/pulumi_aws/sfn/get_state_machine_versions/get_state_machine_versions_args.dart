// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getStateMachineVersions.
class GetStateMachineVersionsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of the State Machine.
  final Input<String> statemachineArn;

  GetStateMachineVersionsArgs({
    this.region,
    required this.statemachineArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['statemachineArn'] = statemachineArn;
    return map;
  }

  factory GetStateMachineVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetStateMachineVersionsArgs(
      region: Input.asOptionalInput<String>(map['region']),
      statemachineArn: Input.asInput<String>(map['statemachineArn']),
    );
  }
}
