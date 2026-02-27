// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'metadata_export_response3.dart';
import 'restore_response3.dart';

/// The metadata management activities of the metastore service.
class MetadataManagementActivityResponse3 {
  /// The latest metadata exports of the metastore service.
  final List<MetadataExportResponse3> metadataExports;

  /// The latest restores of the metastore service.
  final List<RestoreResponse3> restores;

  MetadataManagementActivityResponse3({
    required this.metadataExports,
    required this.restores,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metadataExports'] =
        Input.encodeList<MetadataExportResponse3, Map<String, dynamic>>(
            metadataExports, (value) => value.toMap());
    map['restores'] = Input.encodeList<RestoreResponse3, Map<String, dynamic>>(
        restores, (value) => value.toMap());
    return map;
  }

  factory MetadataManagementActivityResponse3.fromMap(
      Map<String, dynamic> map) {
    return MetadataManagementActivityResponse3(
      metadataExports: Input.decodeList<MetadataExportResponse3>(
          map['metadataExports'],
          (value) => MetadataExportResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      restores: Input.decodeList<RestoreResponse3>(
          map['restores'],
          (value) =>
              RestoreResponse3.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
