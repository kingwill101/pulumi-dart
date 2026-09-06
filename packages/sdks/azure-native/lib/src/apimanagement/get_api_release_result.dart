// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApiRelease.
class GetApiReleaseResult {
  /// Identifier of the API the release belongs to.
  final String? apiId;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The time the API was released. The date conforms to the following format: yyyy-MM-ddTHH:mm:ssZ as specified by the ISO 8601 standard.
  final String? createdDateTime;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// Release Notes
  final String? notes;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The time the API release was updated.
  final String? updatedDateTime;

  /// Creates a new [GetApiReleaseResult].
  /// [apiId] Identifier of the API the release belongs to.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdDateTime] The time the API was released. The date conforms to the following format: yyyy-MM-ddTHH:mm:ssZ as specified by the ISO 8601 standard.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [notes] Release Notes
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updatedDateTime] The time the API release was updated.
  const GetApiReleaseResult({
    this.apiId,
    this.azureApiVersion,
    this.createdDateTime,
    this.id,
    this.name,
    this.notes,
    this.type,
    this.updatedDateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'azureApiVersion': ?azureApiVersion,
      'createdDateTime': ?createdDateTime,
      'id': ?id,
      'name': ?name,
      'notes': ?notes,
      'type': ?type,
      'updatedDateTime': ?updatedDateTime,
    };
  }

  factory GetApiReleaseResult.fromMap(Map<String, dynamic> map) {
    return GetApiReleaseResult(
      apiId: (() { final guardedValue = map['apiId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdDateTime: (() { final guardedValue = map['createdDateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedDateTime: (() { final guardedValue = map['updatedDateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
