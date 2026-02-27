// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFunction.
class GetFunctionCloudfunctionsV2betaArgs {
  final pulumi.Input<String> functionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetFunctionCloudfunctionsV2betaArgs({
    required this.functionId,
    required this.location,
    this.project,
  });

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

  factory GetFunctionCloudfunctionsV2betaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetFunctionCloudfunctionsV2betaArgs(
      functionId: pulumi.Input.asInput<String>(map['functionId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
