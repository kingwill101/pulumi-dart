// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_set_physical_table_map_s3_source_input_column.dart';
import 'data_set_physical_table_map_s3_source_upload_settings.dart';

class DataSetPhysicalTableMapS3Source {
  /// ARN of the data source.
  final pulumi.Input<String> dataSourceArn;
  /// Column schema of the table. See input_columns.
  final pulumi.Input<List<DataSetPhysicalTableMapS3SourceInputColumn>> inputColumns;
  /// Information about the format for the S3 source file or files. See upload_settings.
  final pulumi.Input<DataSetPhysicalTableMapS3SourceUploadSettings> uploadSettings;

  /// Creates a new [DataSetPhysicalTableMapS3Source].
  /// [dataSourceArn] ARN of the data source.
  /// [inputColumns] Column schema of the table. See input_columns.
  /// [uploadSettings] Information about the format for the S3 source file or files. See upload_settings.
  DataSetPhysicalTableMapS3Source({
    required this.dataSourceArn,
    required this.inputColumns,
    required this.uploadSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceArn': dataSourceArn,
      'inputColumns': pulumi.Input.mapInputValue<List<DataSetPhysicalTableMapS3SourceInputColumn>, List<Map<String, dynamic>>>(inputColumns, (value) => pulumi.Input.encodeList<DataSetPhysicalTableMapS3SourceInputColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uploadSettings': pulumi.Input.mapInputValue<DataSetPhysicalTableMapS3SourceUploadSettings, Map<String, dynamic>>(uploadSettings, (value) => value.toMap()),
    };
  }

  factory DataSetPhysicalTableMapS3Source.fromMap(Map<String, dynamic> map) {
    return DataSetPhysicalTableMapS3Source(
      dataSourceArn: pulumi.Input.fromValue(map['dataSourceArn'] as String),
      inputColumns: pulumi.Input.fromValue(pulumi.Input.decodeList<DataSetPhysicalTableMapS3SourceInputColumn>(map['inputColumns']!, (value) => DataSetPhysicalTableMapS3SourceInputColumn.fromMap((value as Map).cast<String, dynamic>()))),
      uploadSettings: pulumi.Input.fromValue(DataSetPhysicalTableMapS3SourceUploadSettings.fromMap((map['uploadSettings']! as Map).cast<String, dynamic>())),
    );
  }
}

