// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getMetadataStore.
class GetMetadataStoreArgs {
  final Input<String> location;
  final Input<String> metadataStoreId;
  final Input<String>? project;

  GetMetadataStoreArgs({
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

  factory GetMetadataStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetMetadataStoreArgs(
      location: Input.asInput<String>(map['location']),
      metadataStoreId: Input.asInput<String>(map['metadataStoreId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
