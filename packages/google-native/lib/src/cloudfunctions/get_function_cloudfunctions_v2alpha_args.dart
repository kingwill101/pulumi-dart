// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfunctions_v2alpha_get_function_cloudfunctions_v2alpha_args_doc}
/// Arguments for getFunction.
/// {@endtemplate}
/// {@macro pulumi_cloudfunctions_v2alpha_get_function_cloudfunctions_v2alpha_args_doc}
class GetFunctionCloudfunctionsV2alphaArgs {
  final pulumi.Input<String> functionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFunctionCloudfunctionsV2alphaArgs].
  /// [functionId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFunctionCloudfunctionsV2alphaArgs({
    required String functionId,
    required String location,
    String? project,
  })  : functionId = pulumi.Input.asInput<String>(functionId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['functionId'] = functionId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFunctionCloudfunctionsV2alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetFunctionCloudfunctionsV2alphaArgs(
      functionId: map['functionId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
