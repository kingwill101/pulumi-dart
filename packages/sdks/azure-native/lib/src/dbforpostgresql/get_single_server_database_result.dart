// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSingleServerDatabase.
class GetSingleServerDatabaseResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The charset of the database.
  final String? charset;
  /// The collation of the database.
  final String? collation;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSingleServerDatabaseResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [charset] The charset of the database.
  /// [collation] The collation of the database.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetSingleServerDatabaseResult({
    required this.azureApiVersion,
    this.charset,
    this.collation,
    required this.id,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'charset': ?charset,
      'collation': ?collation,
      'id': id,
      'name': name,
      'type': type,
    };
  }

  factory GetSingleServerDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetSingleServerDatabaseResult(
      azureApiVersion: map['azureApiVersion'] as String,
      charset: (() { final guardedValue = map['charset']; if (guardedValue == null) return null; return guardedValue as String; })(),
      collation: (() { final guardedValue = map['collation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
