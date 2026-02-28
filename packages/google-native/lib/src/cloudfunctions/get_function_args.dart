// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfunctions_v1_get_function_args_doc}
/// Arguments for getFunction.
/// {@endtemplate}
/// {@macro pulumi_cloudfunctions_v1_get_function_args_doc}
class GetFunctionArgs {
  final pulumi.Input<String> functionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? versionId;

  /// Creates a new [GetFunctionArgs].
  /// [functionId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [versionId] Optional.
  GetFunctionArgs({
    required String functionId,
    required String location,
    String? project,
    String? versionId,
  })  : functionId = pulumi.Input.asInput<String>(functionId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        versionId = pulumi.Input.asOptionalInput<String>(versionId);

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
      functionId: map['functionId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      versionId: map['versionId'] == null ? null : map['versionId'] as String,
    );
  }
}
