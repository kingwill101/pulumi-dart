// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_metadata_store_args_doc}
/// Arguments for getMetadataStore.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_metadata_store_args_doc}
class GetMetadataStoreArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> metadataStoreId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMetadataStoreArgs].
  /// [location] Required.
  /// [metadataStoreId] Required.
  /// [project] Optional.
  GetMetadataStoreArgs({
    required String location,
    required String metadataStoreId,
    String? project,
  })  : location = pulumi.Input.asInput<String>(location),
        metadataStoreId = pulumi.Input.asInput<String>(metadataStoreId),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      location: map['location'] as String,
      metadataStoreId: map['metadataStoreId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
