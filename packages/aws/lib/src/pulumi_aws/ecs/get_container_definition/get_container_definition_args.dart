// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getContainerDefinition.
class GetContainerDefinitionArgs {
  /// Name of the container definition
  final pulumi.Input<String> containerName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of the task definition which contains the container
  final pulumi.Input<String> taskDefinition;

  GetContainerDefinitionArgs({
    required this.containerName,
    this.region,
    required this.taskDefinition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerName'] = containerName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['taskDefinition'] = taskDefinition;
    return map;
  }

  factory GetContainerDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetContainerDefinitionArgs(
      containerName: pulumi.Input.asInput<String>(map['containerName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      taskDefinition: pulumi.Input.asInput<String>(map['taskDefinition']),
    );
  }
}
