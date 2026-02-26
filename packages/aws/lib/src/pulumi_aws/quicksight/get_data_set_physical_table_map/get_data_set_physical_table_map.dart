// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_data_set_physical_table_map_custom_sql/get_data_set_physical_table_map_custom_sql.dart';
import '../get_data_set_physical_table_map_relational_table/get_data_set_physical_table_map_relational_table.dart';
import '../get_data_set_physical_table_map_s3_source/get_data_set_physical_table_map_s3_source.dart';

class GetDataSetPhysicalTableMap {
  final List<GetDataSetPhysicalTableMapCustomSql> customSqls;
  final String physicalTableMapId;
  final List<GetDataSetPhysicalTableMapRelationalTable> relationalTables;
  final List<GetDataSetPhysicalTableMapS3Source> s3Sources;

  GetDataSetPhysicalTableMap({
    required this.customSqls,
    required this.physicalTableMapId,
    required this.relationalTables,
    required this.s3Sources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customSqls'] = Input.encodeList<GetDataSetPhysicalTableMapCustomSql,
        Map<String, dynamic>>(customSqls, (value) => value.toMap());
    map['physicalTableMapId'] = physicalTableMapId;
    map['relationalTables'] = Input.encodeList<
        GetDataSetPhysicalTableMapRelationalTable,
        Map<String, dynamic>>(relationalTables, (value) => value.toMap());
    map['s3Sources'] = Input.encodeList<GetDataSetPhysicalTableMapS3Source,
        Map<String, dynamic>>(s3Sources, (value) => value.toMap());
    return map;
  }

  factory GetDataSetPhysicalTableMap.fromMap(Map<String, dynamic> map) {
    return GetDataSetPhysicalTableMap(
      customSqls: Input.decodeList<GetDataSetPhysicalTableMapCustomSql>(
          map['customSqls'],
          (value) => GetDataSetPhysicalTableMapCustomSql.fromMap(
              (value as Map).cast<String, dynamic>())),
      physicalTableMapId: map['physicalTableMapId'] as String,
      relationalTables:
          Input.decodeList<GetDataSetPhysicalTableMapRelationalTable>(
              map['relationalTables'],
              (value) => GetDataSetPhysicalTableMapRelationalTable.fromMap(
                  (value as Map).cast<String, dynamic>())),
      s3Sources: Input.decodeList<GetDataSetPhysicalTableMapS3Source>(
          map['s3Sources'],
          (value) => GetDataSetPhysicalTableMapS3Source.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
