// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDatabaseInstance.
class GetDatabaseInstanceArgs {
  /// The name of the instance.
  final Input<String> name;

  /// The ID of the project in which the resource belongs.
  final Input<String>? project;

  GetDatabaseInstanceArgs({
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDatabaseInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceArgs(
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
