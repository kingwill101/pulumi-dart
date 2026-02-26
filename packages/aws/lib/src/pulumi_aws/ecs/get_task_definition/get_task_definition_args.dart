// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTaskDefinition.
class GetTaskDefinitionArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Family for the latest ACTIVE revision, family and revision (family:revision) for a specific revision in the family, the ARN of the task definition to access to.
  final Input<String> taskDefinition;

  GetTaskDefinitionArgs({
    this.region,
    required this.taskDefinition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['taskDefinition'] = taskDefinition;
    return map;
  }

  factory GetTaskDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetTaskDefinitionArgs(
      region: Input.asOptionalInput<String>(map['region']),
      taskDefinition: Input.asInput<String>(map['taskDefinition']),
    );
  }
}
