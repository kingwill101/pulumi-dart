// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFunction.
class GetFunctionCloudfunctionsv2Args {
  /// The location in which the resource belongs.
  ///
  /// - - -
  final pulumi.Input<String> location;

  /// The name of a Cloud Function (2nd gen).
  final pulumi.Input<String> name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetFunctionCloudfunctionsv2Args({
    required this.location,
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFunctionCloudfunctionsv2Args.fromMap(Map<String, dynamic> map) {
    return GetFunctionCloudfunctionsv2Args(
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
