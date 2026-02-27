// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'metadata_export_response2.dart';
import 'restore_response2.dart';

/// The metadata management activities of the metastore service.
class MetadataManagementActivityResponse2 {
  /// The latest metadata exports of the metastore service.
  final List<MetadataExportResponse2> metadataExports;

  /// The latest restores of the metastore service.
  final List<RestoreResponse2> restores;

  MetadataManagementActivityResponse2({
    required this.metadataExports,
    required this.restores,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metadataExports'] =
        Input.encodeList<MetadataExportResponse2, Map<String, dynamic>>(
            metadataExports, (value) => value.toMap());
    map['restores'] = Input.encodeList<RestoreResponse2, Map<String, dynamic>>(
        restores, (value) => value.toMap());
    return map;
  }

  factory MetadataManagementActivityResponse2.fromMap(
      Map<String, dynamic> map) {
    return MetadataManagementActivityResponse2(
      metadataExports: Input.decodeList<MetadataExportResponse2>(
          map['metadataExports'],
          (value) => MetadataExportResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      restores: Input.decodeList<RestoreResponse2>(
          map['restores'],
          (value) =>
              RestoreResponse2.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
