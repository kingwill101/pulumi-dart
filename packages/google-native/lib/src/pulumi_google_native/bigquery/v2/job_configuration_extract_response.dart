// ignore_for_file: unused_element, unnecessary_cast

import 'model_reference_response.dart';
import 'table_reference_response.dart';

class JobConfigurationExtractResponse {
  /// [Optional] The compression type to use for exported files. Possible values include GZIP, DEFLATE, SNAPPY, and NONE. The default value is NONE. DEFLATE and SNAPPY are only supported for Avro. Not applicable when extracting models.
  final String compression;

  /// [Optional] The exported file format. Possible values include CSV, NEWLINE_DELIMITED_JSON, PARQUET or AVRO for tables and ML_TF_SAVED_MODEL or ML_XGBOOST_BOOSTER for models. The default value for tables is CSV. Tables with nested or repeated fields cannot be exported as CSV. The default value for models is ML_TF_SAVED_MODEL.
  final String destinationFormat;

  /// [Pick one] DEPRECATED: Use destinationUris instead, passing only one URI as necessary. The fully-qualified Google Cloud Storage URI where the extracted table should be written.
  final String destinationUri;

  /// [Pick one] A list of fully-qualified Google Cloud Storage URIs where the extracted table should be written.
  final List<String> destinationUris;

  /// [Optional] Delimiter to use between fields in the exported data. Default is ','. Not applicable when extracting models.
  final String fieldDelimiter;

  /// [Optional] Whether to print out a header row in the results. Default is true. Not applicable when extracting models.
  final bool printHeader;

  /// A reference to the model being exported.
  final ModelReferenceResponse sourceModel;

  /// A reference to the table being exported.
  final TableReferenceResponse sourceTable;

  /// [Optional] If destinationFormat is set to "AVRO", this flag indicates whether to enable extracting applicable column types (such as TIMESTAMP) to their corresponding AVRO logical types (timestamp-micros), instead of only using their raw types (avro-long). Not applicable when extracting models.
  final bool useAvroLogicalTypes;

  JobConfigurationExtractResponse({
    required this.compression,
    required this.destinationFormat,
    required this.destinationUri,
    required this.destinationUris,
    required this.fieldDelimiter,
    required this.printHeader,
    required this.sourceModel,
    required this.sourceTable,
    required this.useAvroLogicalTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['compression'] = compression;
    map['destinationFormat'] = destinationFormat;
    map['destinationUri'] = destinationUri;
    map['destinationUris'] = destinationUris;
    map['fieldDelimiter'] = fieldDelimiter;
    map['printHeader'] = printHeader;
    map['sourceModel'] = sourceModel.toMap();
    map['sourceTable'] = sourceTable.toMap();
    map['useAvroLogicalTypes'] = useAvroLogicalTypes;
    return map;
  }

  factory JobConfigurationExtractResponse.fromMap(Map<String, dynamic> map) {
    return JobConfigurationExtractResponse(
      compression: map['compression'] as String,
      destinationFormat: map['destinationFormat'] as String,
      destinationUri: map['destinationUri'] as String,
      destinationUris: (map['destinationUris'] as List).cast<String>(),
      fieldDelimiter: map['fieldDelimiter'] as String,
      printHeader: map['printHeader'] as bool,
      sourceModel: ModelReferenceResponse.fromMap(
          (map['sourceModel'] as Map).cast<String, dynamic>()),
      sourceTable: TableReferenceResponse.fromMap(
          (map['sourceTable'] as Map).cast<String, dynamic>()),
      useAvroLogicalTypes: map['useAvroLogicalTypes'] as bool,
    );
  }
}
