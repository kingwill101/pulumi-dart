// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstance.
class GetInstanceComputeAlphaArgs {
  final pulumi.Input<String> instance;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;
  final pulumi.Input<String> zone;

  GetInstanceComputeAlphaArgs({
    required this.instance,
    this.project,
    this.view,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instance'] = instance;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory GetInstanceComputeAlphaArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceComputeAlphaArgs(
      instance: pulumi.Input.asInput<String>(map['instance']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      view: pulumi.Input.asOptionalInput<String>(map['view']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
