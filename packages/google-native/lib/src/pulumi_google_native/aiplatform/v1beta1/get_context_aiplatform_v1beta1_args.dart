// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getContext.
class GetContextAiplatformV1beta1Args {
  final pulumi.Input<String> contextId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> metadataStoreId;
  final pulumi.Input<String>? project;

  GetContextAiplatformV1beta1Args({
    required this.contextId,
    required this.location,
    required this.metadataStoreId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contextId'] = contextId;
    map['location'] = location;
    map['metadataStoreId'] = metadataStoreId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetContextAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetContextAiplatformV1beta1Args(
      contextId: pulumi.Input.asInput<String>(map['contextId']),
      location: pulumi.Input.asInput<String>(map['location']),
      metadataStoreId: pulumi.Input.asInput<String>(map['metadataStoreId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
