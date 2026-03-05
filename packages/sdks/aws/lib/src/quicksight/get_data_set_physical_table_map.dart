// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_set_physical_table_map_custom_sql.dart';
import 'get_data_set_physical_table_map_relational_table.dart';
import 'get_data_set_physical_table_map_s3_source.dart';

class GetDataSetPhysicalTableMap {
  final pulumi.Input<List<GetDataSetPhysicalTableMapCustomSql>> customSqls;
  final pulumi.Input<String> physicalTableMapId;
  final pulumi.Input<List<GetDataSetPhysicalTableMapRelationalTable>> relationalTables;
  final pulumi.Input<List<GetDataSetPhysicalTableMapS3Source>> s3Sources;

  /// Creates a new [GetDataSetPhysicalTableMap].
  /// [customSqls] Required.
  /// [physicalTableMapId] Required.
  /// [relationalTables] Required.
  /// [s3Sources] Required.
  GetDataSetPhysicalTableMap({
    required this.customSqls,
    required this.physicalTableMapId,
    required this.relationalTables,
    required this.s3Sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customSqls': pulumi.Input.mapInputValue<List<GetDataSetPhysicalTableMapCustomSql>, List<Map<String, dynamic>>>(customSqls, (value) => pulumi.Input.encodeList<GetDataSetPhysicalTableMapCustomSql, Map<String, dynamic>>(value, (value) => value.toMap())),
      'physicalTableMapId': physicalTableMapId,
      'relationalTables': pulumi.Input.mapInputValue<List<GetDataSetPhysicalTableMapRelationalTable>, List<Map<String, dynamic>>>(relationalTables, (value) => pulumi.Input.encodeList<GetDataSetPhysicalTableMapRelationalTable, Map<String, dynamic>>(value, (value) => value.toMap())),
      's3Sources': pulumi.Input.mapInputValue<List<GetDataSetPhysicalTableMapS3Source>, List<Map<String, dynamic>>>(s3Sources, (value) => pulumi.Input.encodeList<GetDataSetPhysicalTableMapS3Source, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDataSetPhysicalTableMap.fromMap(Map<String, dynamic> map) {
    return GetDataSetPhysicalTableMap(
      customSqls: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataSetPhysicalTableMapCustomSql>(map['customSqls']!, (value) => GetDataSetPhysicalTableMapCustomSql.fromMap((value as Map).cast<String, dynamic>()))),
      physicalTableMapId: pulumi.Input.fromValue(map['physicalTableMapId'] as String),
      relationalTables: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataSetPhysicalTableMapRelationalTable>(map['relationalTables']!, (value) => GetDataSetPhysicalTableMapRelationalTable.fromMap((value as Map).cast<String, dynamic>()))),
      s3Sources: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataSetPhysicalTableMapS3Source>(map['s3Sources']!, (value) => GetDataSetPhysicalTableMapS3Source.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

