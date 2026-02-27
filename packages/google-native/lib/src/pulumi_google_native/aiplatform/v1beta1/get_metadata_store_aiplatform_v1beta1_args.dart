// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getMetadataStore.
class GetMetadataStoreAiplatformV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> metadataStoreId;
  final pulumi.Input<String>? project;

  GetMetadataStoreAiplatformV1beta1Args({
    required this.location,
    required this.metadataStoreId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['metadataStoreId'] = metadataStoreId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetMetadataStoreAiplatformV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetMetadataStoreAiplatformV1beta1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      metadataStoreId: pulumi.Input.asInput<String>(map['metadataStoreId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
