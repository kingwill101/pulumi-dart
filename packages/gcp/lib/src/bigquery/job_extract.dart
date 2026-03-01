// ignore_for_file: unused_element, unnecessary_cast

import 'job_extract_source_model.dart';
import 'job_extract_source_table.dart';

class JobExtract {
  /// The compression type to use for exported files. Possible values include GZIP, DEFLATE, SNAPPY, and NONE.
  /// The default value is NONE. DEFLATE and SNAPPY are only supported for Avro.
  final String? compression;

  /// The exported file format. Possible values include CSV, NEWLINE_DELIMITED_JSON and AVRO for tables and SAVED_MODEL for models.
  /// The default value for tables is CSV. Tables with nested or repeated fields cannot be exported as CSV.
  /// The default value for models is SAVED_MODEL.
  final String? destinationFormat;

  /// A list of fully-qualified Google Cloud Storage URIs where the extracted table should be written.
  final List<String> destinationUris;

  /// When extracting data in CSV format, this defines the delimiter to use between fields in the exported data.
  /// Default is ','
  final String? fieldDelimiter;

  /// Whether to print out a header row in the results. Default is true.
  final bool? printHeader;

  /// A reference to the model being exported.
  /// Structure is documented below.
  final JobExtractSourceModel? sourceModel;

  /// A reference to the table being exported.
  /// Structure is documented below.
  final JobExtractSourceTable? sourceTable;

  /// Whether to use logical types when extracting to AVRO format.
  final bool? useAvroLogicalTypes;

  /// Creates a new [JobExtract].
  /// [compression] The compression type to use for exported files. Possible values include GZIP, DEFLATE, SNAPPY, and NONE.
  /// [destinationFormat] The exported file format. Possible values include CSV, NEWLINE_DELIMITED_JSON and AVRO for tables and SAVED_MODEL for models.
  /// [destinationUris] A list of fully-qualified Google Cloud Storage URIs where the extracted table should be written.
  /// [fieldDelimiter] When extracting data in CSV format, this defines the delimiter to use between fields in the exported data.
  /// [printHeader] Whether to print out a header row in the results. Default is true.
  /// [sourceModel] A reference to the model being exported.
  /// [sourceTable] A reference to the table being exported.
  /// [useAvroLogicalTypes] Whether to use logical types when extracting to AVRO format.
  JobExtract({
    this.compression,
    this.destinationFormat,
    required this.destinationUris,
    this.fieldDelimiter,
    this.printHeader,
    this.sourceModel,
    this.sourceTable,
    this.useAvroLogicalTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': ?compression,
      'destinationFormat': ?destinationFormat,
      'destinationUris': destinationUris,
      'fieldDelimiter': ?fieldDelimiter,
      'printHeader': ?printHeader,
      'sourceModel': ?sourceModel == null ? null : sourceModel!.toMap(),
      'sourceTable': ?sourceTable == null ? null : sourceTable!.toMap(),
      'useAvroLogicalTypes': ?useAvroLogicalTypes,
    };
  }

  factory JobExtract.fromMap(Map<String, dynamic> map) {
    return JobExtract(
      compression: map['compression'] == null
          ? null
          : map['compression'] as String,
      destinationFormat: map['destinationFormat'] == null
          ? null
          : map['destinationFormat'] as String,
      destinationUris: (map['destinationUris'] as List).cast<String>(),
      fieldDelimiter: map['fieldDelimiter'] == null
          ? null
          : map['fieldDelimiter'] as String,
      printHeader: map['printHeader'] == null
          ? null
          : map['printHeader'] as bool,
      sourceModel: map['sourceModel'] == null
          ? null
          : JobExtractSourceModel.fromMap(
              (map['sourceModel'] as Map).cast<String, dynamic>(),
            ),
      sourceTable: map['sourceTable'] == null
          ? null
          : JobExtractSourceTable.fromMap(
              (map['sourceTable'] as Map).cast<String, dynamic>(),
            ),
      useAvroLogicalTypes: map['useAvroLogicalTypes'] == null
          ? null
          : map['useAvroLogicalTypes'] as bool,
    );
  }
}
