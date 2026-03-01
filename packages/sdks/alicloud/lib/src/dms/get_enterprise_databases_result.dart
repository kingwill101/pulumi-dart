// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_enterprise_databases_database.dart';

/// Result data returned by getEnterpriseDatabases.
class GetEnterpriseDatabasesResult {
  /// A list of Database Entries. Each element contains the following attributes:
  final List<GetEnterpriseDatabasesDatabase> databases;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Database IDs.
  final List<String> ids;
  /// The instance ID of the target database.
  final String instanceId;
  final String? nameRegex;
  final String? outputFile;

  /// Creates a new [GetEnterpriseDatabasesResult].
  /// [databases] A list of Database Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Database IDs.
  /// [instanceId] The instance ID of the target database.
  /// [nameRegex] Optional.
  /// [outputFile] Optional.
  GetEnterpriseDatabasesResult({
    required this.databases,
    required this.id,
    required this.ids,
    required this.instanceId,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': pulumi.Input.encodeList<GetEnterpriseDatabasesDatabase, Map<String, dynamic>>(databases, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetEnterpriseDatabasesResult.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseDatabasesResult(
      databases: pulumi.Input.decodeList<GetEnterpriseDatabasesDatabase>(map['databases'], (value) => GetEnterpriseDatabasesDatabase.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

