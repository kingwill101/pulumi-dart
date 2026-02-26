// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAiIndex.
class GetAiIndexArgs {
  /// The name of the index.
  final Input<String> name;

  /// The ID of the project in which the resource belongs.
  final Input<String>? project;

  /// The region of the index.
  ///
  /// - - -
  final Input<String> region;

  GetAiIndexArgs({
    required this.name,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetAiIndexArgs.fromMap(Map<String, dynamic> map) {
    return GetAiIndexArgs(
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
