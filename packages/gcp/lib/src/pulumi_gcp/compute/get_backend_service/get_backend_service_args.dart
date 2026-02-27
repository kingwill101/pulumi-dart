// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBackendService.
class GetBackendServiceArgs {
  /// The name of the Backend Service.
  ///
  /// - - -
  final pulumi.Input<String> name;

  /// The project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetBackendServiceArgs({
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

  factory GetBackendServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceArgs(
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
