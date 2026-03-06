// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSqlServer.
class GetSqlServerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Cores of the Sql Server.
  final int? cores;
  /// Sql Server Edition.
  final String? edition;
  /// Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Sql Server Json Property Bag.
  final String? propertyBag;
  /// ID for Parent Sql Server Registration.
  final String? registrationID;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  final String type;
  /// Version of the Sql Server.
  final String? version;

  /// Creates a new [GetSqlServerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cores] Cores of the Sql Server.
  /// [edition] Sql Server Edition.
  /// [id] Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [propertyBag] Sql Server Json Property Bag.
  /// [registrationID] ID for Parent Sql Server Registration.
  /// [type] The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  /// [version] Version of the Sql Server.
  const GetSqlServerResult({
    required this.azureApiVersion,
    this.cores,
    this.edition,
    required this.id,
    required this.name,
    this.propertyBag,
    this.registrationID,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'cores': ?cores,
      'edition': ?edition,
      'id': id,
      'name': name,
      'propertyBag': ?propertyBag,
      'registrationID': ?registrationID,
      'type': type,
      'version': ?version,
    };
  }

  factory GetSqlServerResult.fromMap(Map<String, dynamic> map) {
    return GetSqlServerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      cores: (() { final guardedValue = map['cores']; if (guardedValue == null) return null; return guardedValue as int; })(),
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      propertyBag: (() { final guardedValue = map['propertyBag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registrationID: (() { final guardedValue = map['registrationID']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

