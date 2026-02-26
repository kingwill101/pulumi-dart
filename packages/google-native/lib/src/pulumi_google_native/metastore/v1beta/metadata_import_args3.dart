// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'database_dump3.dart';

/// The set of arguments for MetadataImport.
class MetadataImportArgs3 {
  /// Immutable. A database dump from a pre-existing metastore's database.
  final Input<DatabaseDump3>? databaseDump;

  /// The description of the metadata import.
  final Input<String>? description;
  final Input<String>? location;

  /// Required. The ID of the metadata import, which is used as the final component of the metadata import's name.This value must be between 1 and 64 characters long, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.
  final Input<String> metadataImportId;

  /// Immutable. The relative resource name of the metadata import, of the form:projects/{project_number}/locations/{location_id}/services/{service_id}/metadataImports/{metadata_import_id}.
  final Input<String>? name;
  final Input<String>? project;

  /// Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  final Input<String>? requestId;
  final Input<String> serviceId;

  MetadataImportArgs3({
    this.databaseDump,
    this.description,
    this.location,
    required this.metadataImportId,
    this.name,
    this.project,
    this.requestId,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final databaseDumpValue = databaseDump;
    if (databaseDumpValue != null) {
      map['databaseDump'] =
          Input.mapOptionalInputValue<DatabaseDump3, Map<String, dynamic>>(
              databaseDumpValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['metadataImportId'] = metadataImportId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['serviceId'] = serviceId;
    return map;
  }

  factory MetadataImportArgs3.fromMap(Map<String, dynamic> map) {
    return MetadataImportArgs3(
      databaseDump: Input.asOptionalInput<DatabaseDump3>(map['databaseDump']),
      description: Input.asOptionalInput<String>(map['description']),
      location: Input.asOptionalInput<String>(map['location']),
      metadataImportId: Input.asInput<String>(map['metadataImportId']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      serviceId: Input.asInput<String>(map['serviceId']),
    );
  }
}
