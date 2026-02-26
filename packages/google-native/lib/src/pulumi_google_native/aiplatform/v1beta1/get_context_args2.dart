// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getContext.
class GetContextArgs2 {
  final Input<String> contextId;
  final Input<String> location;
  final Input<String> metadataStoreId;
  final Input<String>? project;

  GetContextArgs2({
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

  factory GetContextArgs2.fromMap(Map<String, dynamic> map) {
    return GetContextArgs2(
      contextId: Input.asInput<String>(map['contextId']),
      location: Input.asInput<String>(map['location']),
      metadataStoreId: Input.asInput<String>(map['metadataStoreId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
