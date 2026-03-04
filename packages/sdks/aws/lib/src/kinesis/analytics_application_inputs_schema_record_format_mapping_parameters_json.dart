// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalyticsApplicationInputsSchemaRecordFormatMappingParametersJson {
  /// Path to the top-level parent that contains the records.
  final pulumi.Input<String> recordRowPath;

  /// Creates a new [AnalyticsApplicationInputsSchemaRecordFormatMappingParametersJson].
  /// [recordRowPath] Path to the top-level parent that contains the records.
  AnalyticsApplicationInputsSchemaRecordFormatMappingParametersJson({
    required this.recordRowPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'recordRowPath': recordRowPath};
  }

  factory AnalyticsApplicationInputsSchemaRecordFormatMappingParametersJson.fromMap(
    Map<String, dynamic> map,
  ) {
    return AnalyticsApplicationInputsSchemaRecordFormatMappingParametersJson(
      recordRowPath: pulumi.Input.fromValue(map['recordRowPath'] as String),
    );
  }
}
