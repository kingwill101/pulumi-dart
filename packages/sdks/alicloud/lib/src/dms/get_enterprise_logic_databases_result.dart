// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_enterprise_logic_databases_database.dart';

/// Result data returned by getEnterpriseLogicDatabases.
class GetEnterpriseLogicDatabasesResult {
  /// A list of Logic Database Entries. Each element contains the following attributes:
  final List<GetEnterpriseLogicDatabasesDatabase> databases;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Logic Database IDs.
  final List<String> ids;
  final String? outputFile;

  /// Creates a new [GetEnterpriseLogicDatabasesResult].
  /// [databases] A list of Logic Database Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Logic Database IDs.
  /// [outputFile] Optional.
  const GetEnterpriseLogicDatabasesResult({
    required this.databases,
    required this.id,
    required this.ids,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': pulumi.Input.encodeList<GetEnterpriseLogicDatabasesDatabase, Map<String, dynamic>>(databases, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetEnterpriseLogicDatabasesResult.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseLogicDatabasesResult(
      databases: pulumi.Input.decodeList<GetEnterpriseLogicDatabasesDatabase>(map['databases']!, (value) => GetEnterpriseLogicDatabasesDatabase.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

