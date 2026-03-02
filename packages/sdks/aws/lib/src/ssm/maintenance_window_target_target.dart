// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MaintenanceWindowTargetTarget {
  final pulumi.Input<String> key;
  final pulumi.Input<List<String>> values;

  /// Creates a new [MaintenanceWindowTargetTarget].
  /// [key] Required.
  /// [values] Required.
  MaintenanceWindowTargetTarget({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory MaintenanceWindowTargetTarget.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowTargetTarget(
      key: (map['key'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

