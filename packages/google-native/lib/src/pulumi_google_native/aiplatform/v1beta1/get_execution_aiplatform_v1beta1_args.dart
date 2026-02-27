// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getExecution.
class GetExecutionAiplatformV1beta1Args {
  final pulumi.Input<String> executionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> metadataStoreId;
  final pulumi.Input<String>? project;

  GetExecutionAiplatformV1beta1Args({
    required this.executionId,
    required this.location,
    required this.metadataStoreId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['executionId'] = executionId;
    map['location'] = location;
    map['metadataStoreId'] = metadataStoreId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetExecutionAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetExecutionAiplatformV1beta1Args(
      executionId: pulumi.Input.asInput<String>(map['executionId']),
      location: pulumi.Input.asInput<String>(map['location']),
      metadataStoreId: pulumi.Input.asInput<String>(map['metadataStoreId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
