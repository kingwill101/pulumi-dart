// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFunction.
class GetFunctionArgs {
  final Input<String> functionId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String>? versionId;

  GetFunctionArgs({
    required this.functionId,
    required this.location,
    this.project,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['functionId'] = functionId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final versionIdValue = versionId;
    if (versionIdValue != null) {
      map['versionId'] = versionIdValue;
    }
    return map;
  }

  factory GetFunctionArgs.fromMap(Map<String, dynamic> map) {
    return GetFunctionArgs(
      functionId: Input.asInput<String>(map['functionId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      versionId: Input.asOptionalInput<String>(map['versionId']),
    );
  }
}
