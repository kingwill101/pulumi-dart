// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_set_physical_table_map_s3_source_input_column.dart';
import 'get_data_set_physical_table_map_s3_source_upload_setting.dart';

class GetDataSetPhysicalTableMapS3Source {
  final String dataSourceArn;
  final List<GetDataSetPhysicalTableMapS3SourceInputColumn> inputColumns;
  final List<GetDataSetPhysicalTableMapS3SourceUploadSetting> uploadSettings;

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
      'inputColumns': pulumi.Input.encodeList<GetDataSetPhysicalTableMapS3SourceInputColumn, Map<String, dynamic>>(inputColumns, (value) => value.toMap()),
      'uploadSettings': pulumi.Input.encodeList<GetDataSetPhysicalTableMapS3SourceUploadSetting, Map<String, dynamic>>(uploadSettings, (value) => value.toMap()),
    };
  }

  factory GetDataSetPhysicalTableMapS3Source.fromMap(Map<String, dynamic> map) {
    return GetDataSetPhysicalTableMapS3Source(
      dataSourceArn: map['dataSourceArn'] as String,
      inputColumns: pulumi.Input.decodeList<GetDataSetPhysicalTableMapS3SourceInputColumn>(map['inputColumns'], (value) => GetDataSetPhysicalTableMapS3SourceInputColumn.fromMap((value as Map).cast<String, dynamic>())),
      uploadSettings: pulumi.Input.decodeList<GetDataSetPhysicalTableMapS3SourceUploadSetting>(map['uploadSettings'], (value) => GetDataSetPhysicalTableMapS3SourceUploadSetting.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

