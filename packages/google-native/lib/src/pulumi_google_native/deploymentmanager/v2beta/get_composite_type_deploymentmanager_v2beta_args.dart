// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCompositeType.
class GetCompositeTypeDeploymentmanagerV2betaArgs {
  final pulumi.Input<String> compositeType;
  final pulumi.Input<String>? project;

  GetCompositeTypeDeploymentmanagerV2betaArgs({
    required this.compositeType,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['compositeType'] = compositeType;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCompositeTypeDeploymentmanagerV2betaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetCompositeTypeDeploymentmanagerV2betaArgs(
      compositeType: pulumi.Input.asInput<String>(map['compositeType']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
