// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getInstance.
class GetInstanceArgs24 {
  final Input<String> instance;
  final Input<String>? project;

  GetInstanceArgs24({
    required this.instance,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instance'] = instance;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInstanceArgs24.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs24(
      instance: Input.asInput<String>(map['instance']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
