// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkspaceLogger.
class GetWorkspaceLoggerResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The name and SendRule connection string of the event hub for azureEventHub logger.
  /// Instrumentation key for applicationInsights logger.
  final Map<String, String>? credentials;
  /// Logger description.
  final String? description;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Whether records are buffered in the logger before publishing. Default is assumed to be true.
  final bool? isBuffered;
  /// Logger type.
  final String? loggerType;
  /// The name of the resource
  final String? name;
  /// Azure Resource Id of a log target (either Azure Event Hub resource or Azure Application Insights resource).
  final String? resourceId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetWorkspaceLoggerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [credentials] The name and SendRule connection string of the event hub for azureEventHub logger.
  /// [description] Logger description.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [isBuffered] Whether records are buffered in the logger before publishing. Default is assumed to be true.
  /// [loggerType] Logger type.
  /// [name] The name of the resource
  /// [resourceId] Azure Resource Id of a log target (either Azure Event Hub resource or Azure Application Insights resource).
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWorkspaceLoggerResult({
    this.azureApiVersion,
    this.credentials,
    this.description,
    this.id,
    this.isBuffered,
    this.loggerType,
    this.name,
    this.resourceId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'credentials': ?credentials,
      'description': ?description,
      'id': ?id,
      'isBuffered': ?isBuffered,
      'loggerType': ?loggerType,
      'name': ?name,
      'resourceId': ?resourceId,
      'type': ?type,
    };
  }

  factory GetWorkspaceLoggerResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceLoggerResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isBuffered: (() { final guardedValue = map['isBuffered']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      loggerType: (() { final guardedValue = map['loggerType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
