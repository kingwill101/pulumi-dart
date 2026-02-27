// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../data_set_physical_table_map_s3_source_input_column/data_set_physical_table_map_s3_source_input_column.dart';
import '../data_set_physical_table_map_s3_source_upload_settings/data_set_physical_table_map_s3_source_upload_settings.dart';

class DataSetPhysicalTableMapS3Source {
  /// ARN of the data source.
  final String dataSourceArn;

  /// Column schema of the table. See input_columns.
  final List<DataSetPhysicalTableMapS3SourceInputColumn> inputColumns;

  /// Information about the format for the S3 source file or files. See upload_settings.
  final DataSetPhysicalTableMapS3SourceUploadSettings uploadSettings;

  DataSetPhysicalTableMapS3Source({
    required this.dataSourceArn,
    required this.inputColumns,
    required this.uploadSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataSourceArn'] = dataSourceArn;
    map['inputColumns'] = pulumi.Input.encodeList<
        DataSetPhysicalTableMapS3SourceInputColumn,
        Map<String, dynamic>>(inputColumns, (value) => value.toMap());
    map['uploadSettings'] = uploadSettings.toMap();
    return map;
  }

  factory DataSetPhysicalTableMapS3Source.fromMap(Map<String, dynamic> map) {
    return DataSetPhysicalTableMapS3Source(
      dataSourceArn: map['dataSourceArn'] as String,
      inputColumns:
          pulumi.Input.decodeList<DataSetPhysicalTableMapS3SourceInputColumn>(
              map['inputColumns'],
              (value) => DataSetPhysicalTableMapS3SourceInputColumn.fromMap(
                  (value as Map).cast<String, dynamic>())),
      uploadSettings: DataSetPhysicalTableMapS3SourceUploadSettings.fromMap(
          (map['uploadSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
