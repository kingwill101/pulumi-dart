// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_export_response.dart';
import 'restore_response.dart';

/// The metadata management activities of the metastore service.
class MetadataManagementActivityResponse {
  /// The latest metadata exports of the metastore service.
  final List<MetadataExportResponse> metadataExports;

  /// The latest restores of the metastore service.
  final List<RestoreResponse> restores;

  MetadataManagementActivityResponse({
    required this.metadataExports,
    required this.restores,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metadataExports'] =
        pulumi.Input.encodeList<MetadataExportResponse, Map<String, dynamic>>(
            metadataExports, (value) => value.toMap());
    map['restores'] =
        pulumi.Input.encodeList<RestoreResponse, Map<String, dynamic>>(
            restores, (value) => value.toMap());
    return map;
  }

  factory MetadataManagementActivityResponse.fromMap(Map<String, dynamic> map) {
    return MetadataManagementActivityResponse(
      metadataExports: pulumi.Input.decodeList<MetadataExportResponse>(
          map['metadataExports'],
          (value) => MetadataExportResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      restores: pulumi.Input.decodeList<RestoreResponse>(
          map['restores'],
          (value) =>
              RestoreResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
