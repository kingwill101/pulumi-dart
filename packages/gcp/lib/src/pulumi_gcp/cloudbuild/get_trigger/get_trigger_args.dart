// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTrigger.
class GetTriggerArgs {
  /// The Cloud Build location for the trigger.
  ///
  /// - - -
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The unique identifier for the trigger..
  final pulumi.Input<String> triggerId;

  GetTriggerArgs({
    required this.location,
    this.project,
    required this.triggerId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['triggerId'] = triggerId;
    return map;
  }

  factory GetTriggerArgs.fromMap(Map<String, dynamic> map) {
    return GetTriggerArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      triggerId: pulumi.Input.asInput<String>(map['triggerId']),
    );
  }
}
