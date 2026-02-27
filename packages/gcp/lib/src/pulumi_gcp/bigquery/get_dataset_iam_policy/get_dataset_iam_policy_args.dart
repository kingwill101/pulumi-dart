// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDatasetIamPolicy.
class GetDatasetIamPolicyArgs {
  /// The dataset ID.
  final pulumi.Input<String> datasetId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetDatasetIamPolicyArgs({
    required this.datasetId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDatasetIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetIamPolicyArgs(
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
