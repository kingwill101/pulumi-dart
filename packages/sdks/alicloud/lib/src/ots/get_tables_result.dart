// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tables_table.dart';

/// Result data returned by getTables.
class GetTablesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of table IDs.
  final List<String> ids;

  /// The OTS instance name.
  final String instanceName;
  final String? nameRegex;

  /// A list of table names.
  final List<String> names;
  final String? outputFile;

  /// A list of tables. Each element contains the following attributes:
  final List<GetTablesTable> tables;

  /// Creates a new [GetTablesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of table IDs.
  /// [instanceName] The OTS instance name.
  /// [nameRegex] Optional.
  /// [names] A list of table names.
  /// [outputFile] Optional.
  /// [tables] A list of tables. Each element contains the following attributes:
  GetTablesResult({
    required this.id,
    required this.ids,
    required this.instanceName,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.tables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'instanceName': instanceName,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'tables': pulumi.Input.encodeList<GetTablesTable, Map<String, dynamic>>(
        tables,
        (value) => value.toMap(),
      ),
    };
  }

  factory GetTablesResult.fromMap(Map<String, dynamic> map) {
    return GetTablesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceName: map['instanceName'] as String,
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tables: pulumi.Input.decodeList<GetTablesTable>(
        map['tables']!,
        (value) =>
            GetTablesTable.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
