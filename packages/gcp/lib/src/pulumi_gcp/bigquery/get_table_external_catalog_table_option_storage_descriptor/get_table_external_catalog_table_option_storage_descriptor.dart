// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_table_external_catalog_table_option_storage_descriptor_serde_info/get_table_external_catalog_table_option_storage_descriptor_serde_info.dart';

class GetTableExternalCatalogTableOptionStorageDescriptor {
  /// Specifies the fully qualified class name of the InputFormat (e.g. "org.apache.hadoop.hive.ql.io.orc.OrcInputFormat"). The maximum length is 128 characters.
  final String inputFormat;

  /// The physical location of the table (e.g. 'gs://spark-dataproc-data/pangea-data/case_sensitive/' or 'gs://spark-dataproc-data/pangea-data/*'). The maximum length is 2056 bytes.
  final String locationUri;

  /// Specifies the fully qualified class name of the OutputFormat (e.g. "org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat"). The maximum length is 128 characters.
  final String outputFormat;

  /// Serializer and deserializer information.
  final List<GetTableExternalCatalogTableOptionStorageDescriptorSerdeInfo>
      serdeInfos;

  GetTableExternalCatalogTableOptionStorageDescriptor({
    required this.inputFormat,
    required this.locationUri,
    required this.outputFormat,
    required this.serdeInfos,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inputFormat'] = inputFormat;
    map['locationUri'] = locationUri;
    map['outputFormat'] = outputFormat;
    map['serdeInfos'] = pulumi.Input.encodeList<
        GetTableExternalCatalogTableOptionStorageDescriptorSerdeInfo,
        Map<String, dynamic>>(serdeInfos, (value) => value.toMap());
    return map;
  }

  factory GetTableExternalCatalogTableOptionStorageDescriptor.fromMap(
      Map<String, dynamic> map) {
    return GetTableExternalCatalogTableOptionStorageDescriptor(
      inputFormat: map['inputFormat'] as String,
      locationUri: map['locationUri'] as String,
      outputFormat: map['outputFormat'] as String,
      serdeInfos: pulumi.Input.decodeList<
              GetTableExternalCatalogTableOptionStorageDescriptorSerdeInfo>(
          map['serdeInfos'],
          (value) =>
              GetTableExternalCatalogTableOptionStorageDescriptorSerdeInfo
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
