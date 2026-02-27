// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getInstance.
class GetInstanceArgs7 {
  final Input<String> instance;
  final Input<String>? project;
  final Input<String>? view;
  final Input<String> zone;

  GetInstanceArgs7({
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

  factory GetInstanceArgs7.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs7(
      instance: Input.asInput<String>(map['instance']),
      project: Input.asOptionalInput<String>(map['project']),
      view: Input.asOptionalInput<String>(map['view']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
