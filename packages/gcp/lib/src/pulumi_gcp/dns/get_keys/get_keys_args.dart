// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getKeys.
class GetKeysArgs {
  /// The name or id of the Cloud DNS managed zone.
  final Input<String> managedZone;

  /// The ID of the project in which the resource belongs. If <span pulumi-lang-nodejs="`project`" pulumi-lang-dotnet="`Project`" pulumi-lang-go="`project`" pulumi-lang-python="`project`" pulumi-lang-yaml="`project`" pulumi-lang-java="`project`">`project`</span> is not provided, the provider project is used.
  final Input<String>? project;

  GetKeysArgs({
    required this.managedZone,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['managedZone'] = managedZone;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetKeysArgs.fromMap(Map<String, dynamic> map) {
    return GetKeysArgs(
      managedZone: Input.asInput<String>(map['managedZone']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
