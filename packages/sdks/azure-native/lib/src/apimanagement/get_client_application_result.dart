// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClientApplication.
class GetClientApplicationResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Client application description.
  final String? description;
  /// Client application name.
  final String? displayName;
  /// Microsoft EntraID Application ID (Client ID). This is the value that is used to identify the application when it is requesting access tokens from Microsoft EntraID. This property is read-only and will be set by the system when the application is created.
  final String? entraApplicationId;
  /// Tenant ID is a unique identifier (a GUID) for an organization directory in Microsoft’s cloud. It’s used to identify tenants across Microsoft services.
  final String? entraTenantId;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// A resource identifier for the user who owns the application.
  final String? ownerId;
  /// Client application state. The value derives the state of an application based on the statuses of its associated ClientApplicationProductLinks.
  final String? state;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetClientApplicationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Client application description.
  /// [displayName] Client application name.
  /// [entraApplicationId] Microsoft EntraID Application ID (Client ID). This is the value that is used to identify the application when it is requesting access tokens from Microsoft EntraID. This property is read-only and will be set by the system when the application is created.
  /// [entraTenantId] Tenant ID is a unique identifier (a GUID) for an organization directory in Microsoft’s cloud. It’s used to identify tenants across Microsoft services.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [ownerId] A resource identifier for the user who owns the application.
  /// [state] Client application state. The value derives the state of an application based on the statuses of its associated ClientApplicationProductLinks.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetClientApplicationResult({
    this.azureApiVersion,
    this.description,
    this.displayName,
    this.entraApplicationId,
    this.entraTenantId,
    this.id,
    this.name,
    this.ownerId,
    this.state,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'entraApplicationId': ?entraApplicationId,
      'entraTenantId': ?entraTenantId,
      'id': ?id,
      'name': ?name,
      'ownerId': ?ownerId,
      'state': ?state,
      'type': ?type,
    };
  }

  factory GetClientApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetClientApplicationResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entraApplicationId: (() { final guardedValue = map['entraApplicationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entraTenantId: (() { final guardedValue = map['entraTenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
