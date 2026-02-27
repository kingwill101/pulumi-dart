// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_export_response_metastore_v1alpha.dart';
import 'restore_response_metastore_v1alpha.dart';

/// The metadata management activities of the metastore service.
class MetadataManagementActivityResponseMetastoreV1alpha {
  /// The latest metadata exports of the metastore service.
  final List<MetadataExportResponseMetastoreV1alpha> metadataExports;

  /// The latest restores of the metastore service.
  final List<RestoreResponseMetastoreV1alpha> restores;

  MetadataManagementActivityResponseMetastoreV1alpha({
    required this.metadataExports,
    required this.restores,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metadataExports'] = pulumi.Input.encodeList<
        MetadataExportResponseMetastoreV1alpha,
        Map<String, dynamic>>(metadataExports, (value) => value.toMap());
    map['restores'] = pulumi.Input.encodeList<RestoreResponseMetastoreV1alpha,
        Map<String, dynamic>>(restores, (value) => value.toMap());
    return map;
  }

  factory MetadataManagementActivityResponseMetastoreV1alpha.fromMap(
      Map<String, dynamic> map) {
    return MetadataManagementActivityResponseMetastoreV1alpha(
      metadataExports:
          pulumi.Input.decodeList<MetadataExportResponseMetastoreV1alpha>(
              map['metadataExports'],
              (value) => MetadataExportResponseMetastoreV1alpha.fromMap(
                  (value as Map).cast<String, dynamic>())),
      restores: pulumi.Input.decodeList<RestoreResponseMetastoreV1alpha>(
          map['restores'],
          (value) => RestoreResponseMetastoreV1alpha.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
