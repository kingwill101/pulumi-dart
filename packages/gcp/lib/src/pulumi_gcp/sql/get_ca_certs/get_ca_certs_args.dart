// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCaCerts.
class GetCaCertsArgs {
  /// The name or self link of the instance.
  final pulumi.Input<String> instance;

  /// The ID of the project in which the resource belongs. If `project` is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetCaCertsArgs({
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

  factory GetCaCertsArgs.fromMap(Map<String, dynamic> map) {
    return GetCaCertsArgs(
      instance: pulumi.Input.asInput<String>(map['instance']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
