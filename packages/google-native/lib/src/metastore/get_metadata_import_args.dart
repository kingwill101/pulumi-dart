// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_metastore_v1_get_metadata_import_args_doc}
/// Arguments for getMetadataImport.
/// {@endtemplate}
/// {@macro pulumi_metastore_v1_get_metadata_import_args_doc}
class GetMetadataImportArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> metadataImportId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetMetadataImportArgs].
  /// [location] Required.
  /// [metadataImportId] Required.
  /// [project] Optional.
  /// [serviceId] Required.
  GetMetadataImportArgs({
    required String location,
    required String metadataImportId,
    String? project,
    required String serviceId,
  })  : location = pulumi.Input.asInput<String>(location),
        metadataImportId = pulumi.Input.asInput<String>(metadataImportId),
        project = pulumi.Input.asOptionalInput<String>(project),
        serviceId = pulumi.Input.asInput<String>(serviceId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['metadataImportId'] = metadataImportId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceId'] = serviceId;
    return map;
  }

  factory GetMetadataImportArgs.fromMap(Map<String, dynamic> map) {
    return GetMetadataImportArgs(
      location: map['location'] as String,
      metadataImportId: map['metadataImportId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceId: map['serviceId'] as String,
    );
  }
}
