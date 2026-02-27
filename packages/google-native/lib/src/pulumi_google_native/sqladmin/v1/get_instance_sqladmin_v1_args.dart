// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstance.
class GetInstanceSqladminV1Args {
  final pulumi.Input<String> instance;
  final pulumi.Input<String>? project;

  GetInstanceSqladminV1Args({
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

  factory GetInstanceSqladminV1Args.fromMap(Map<String, dynamic> map) {
    return GetInstanceSqladminV1Args(
      instance: pulumi.Input.asInput<String>(map['instance']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
