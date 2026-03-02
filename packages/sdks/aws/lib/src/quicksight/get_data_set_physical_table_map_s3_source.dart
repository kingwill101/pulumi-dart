// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_set_physical_table_map_s3_source_input_column.dart';
import 'get_data_set_physical_table_map_s3_source_upload_setting.dart';

class GetDataSetPhysicalTableMapS3Source {
  final pulumi.Input<String> dataSourceArn;
  final pulumi.Input<List<GetDataSetPhysicalTableMapS3SourceInputColumn>> inputColumns;
  final pulumi.Input<List<GetDataSetPhysicalTableMapS3SourceUploadSetting>> uploadSettings;

  /// Creates a new [GetDataSetPhysicalTableMapS3Source].
  /// [dataSourceArn] Required.
  /// [inputColumns] Required.
  /// [uploadSettings] Required.
  GetDataSetPhysicalTableMapS3Source({
    required this.dataSourceArn,
    required this.inputColumns,
    required this.uploadSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceArn': dataSourceArn,
      'inputColumns': pulumi.Input.mapInputValue<List<GetDataSetPhysicalTableMapS3SourceInputColumn>, List<Map<String, dynamic>>>(inputColumns, (value) => pulumi.Input.encodeList<GetDataSetPhysicalTableMapS3SourceInputColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uploadSettings': pulumi.Input.mapInputValue<List<GetDataSetPhysicalTableMapS3SourceUploadSetting>, List<Map<String, dynamic>>>(uploadSettings, (value) => pulumi.Input.encodeList<GetDataSetPhysicalTableMapS3SourceUploadSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDataSetPhysicalTableMapS3Source.fromMap(Map<String, dynamic> map) {
    return GetDataSetPhysicalTableMapS3Source(
      dataSourceArn: (map['dataSourceArn'] as String).input(),
      inputColumns: (pulumi.Input.decodeList<GetDataSetPhysicalTableMapS3SourceInputColumn>(map['inputColumns']!, (value) => GetDataSetPhysicalTableMapS3SourceInputColumn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      uploadSettings: (pulumi.Input.decodeList<GetDataSetPhysicalTableMapS3SourceUploadSetting>(map['uploadSettings']!, (value) => GetDataSetPhysicalTableMapS3SourceUploadSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

