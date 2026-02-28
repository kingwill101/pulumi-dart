// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_set_physical_table_map_custom_sql.dart';
import 'get_data_set_physical_table_map_relational_table.dart';
import 'get_data_set_physical_table_map_s3_source.dart';

class GetDataSetPhysicalTableMap {
  final List<GetDataSetPhysicalTableMapCustomSql> customSqls;
  final String physicalTableMapId;
  final List<GetDataSetPhysicalTableMapRelationalTable> relationalTables;
  final List<GetDataSetPhysicalTableMapS3Source> s3Sources;

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
      'customSqls': pulumi.Input.encodeList<GetDataSetPhysicalTableMapCustomSql, Map<String, dynamic>>(customSqls, (value) => value.toMap()),
      'physicalTableMapId': physicalTableMapId,
      'relationalTables': pulumi.Input.encodeList<GetDataSetPhysicalTableMapRelationalTable, Map<String, dynamic>>(relationalTables, (value) => value.toMap()),
      's3Sources': pulumi.Input.encodeList<GetDataSetPhysicalTableMapS3Source, Map<String, dynamic>>(s3Sources, (value) => value.toMap()),
    };
  }

  factory GetDataSetPhysicalTableMap.fromMap(Map<String, dynamic> map) {
    return GetDataSetPhysicalTableMap(
      customSqls: pulumi.Input.decodeList<GetDataSetPhysicalTableMapCustomSql>(map['customSqls'], (value) => GetDataSetPhysicalTableMapCustomSql.fromMap((value as Map).cast<String, dynamic>())),
      physicalTableMapId: map['physicalTableMapId'] as String,
      relationalTables: pulumi.Input.decodeList<GetDataSetPhysicalTableMapRelationalTable>(map['relationalTables'], (value) => GetDataSetPhysicalTableMapRelationalTable.fromMap((value as Map).cast<String, dynamic>())),
      s3Sources: pulumi.Input.decodeList<GetDataSetPhysicalTableMapS3Source>(map['s3Sources'], (value) => GetDataSetPhysicalTableMapS3Source.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

