// ignore_for_file: unused_element, unnecessary_cast

import '../table_external_catalog_table_options_storage_descriptor_serde_info/table_external_catalog_table_options_storage_descriptor_serde_info.dart';

class TableExternalCatalogTableOptionsStorageDescriptor {
  /// Specifies the fully qualified class name of the
  /// InputFormat (e.g. "org.apache.hadoop.hive.ql.io.orc.OrcInputFormat"). The
  /// maximum length is 128 characters.
  final String? inputFormat;

  /// The physical location of the table (e.g.
  /// 'gs://spark-dataproc-data/pangea-data/case_sensitive/' or
  /// 'gs://spark-dataproc-data/pangea-data/*'). The maximum length is 2056 bytes.
  final String? locationUri;

  /// Specifies the fully qualified class name of the
  /// OutputFormat (e.g. "org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat"). The
  /// maximum length is 128 characters.
  final String? outputFormat;

  /// Serializer and deserializer information. Structure
  /// is documented below.
  final TableExternalCatalogTableOptionsStorageDescriptorSerdeInfo? serdeInfo;

  TableExternalCatalogTableOptionsStorageDescriptor({
    this.inputFormat,
    this.locationUri,
    this.outputFormat,
    this.serdeInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inputFormatValue = inputFormat;
    if (inputFormatValue != null) {
      map['inputFormat'] = inputFormatValue;
    }
    final locationUriValue = locationUri;
    if (locationUriValue != null) {
      map['locationUri'] = locationUriValue;
    }
    final outputFormatValue = outputFormat;
    if (outputFormatValue != null) {
      map['outputFormat'] = outputFormatValue;
    }
    final serdeInfoValue = serdeInfo;
    if (serdeInfoValue != null) {
      map['serdeInfo'] = serdeInfoValue.toMap();
    }
    return map;
  }

  factory TableExternalCatalogTableOptionsStorageDescriptor.fromMap(
      Map<String, dynamic> map) {
    return TableExternalCatalogTableOptionsStorageDescriptor(
      inputFormat:
          map['inputFormat'] == null ? null : map['inputFormat'] as String,
      locationUri:
          map['locationUri'] == null ? null : map['locationUri'] as String,
      outputFormat:
          map['outputFormat'] == null ? null : map['outputFormat'] as String,
      serdeInfo: map['serdeInfo'] == null
          ? null
          : TableExternalCatalogTableOptionsStorageDescriptorSerdeInfo.fromMap(
              (map['serdeInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
