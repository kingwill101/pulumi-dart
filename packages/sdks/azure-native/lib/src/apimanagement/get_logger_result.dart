// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLogger.
class GetLoggerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The name and SendRule connection string of the event hub for azureEventHub logger.
  /// Instrumentation key for applicationInsights logger.
  final Map<String, String>? credentials;
  /// Logger description.
  final String? description;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Whether records are buffered in the logger before publishing. Default is assumed to be true.
  final bool? isBuffered;
  /// Logger type.
  final String loggerType;
  /// The name of the resource
  final String name;
  /// Azure Resource Id of a log target (either Azure Event Hub resource or Azure Application Insights resource).
  final String? resourceId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetLoggerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [credentials] The name and SendRule connection string of the event hub for azureEventHub logger.
  /// [description] Logger description.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [isBuffered] Whether records are buffered in the logger before publishing. Default is assumed to be true.
  /// [loggerType] Logger type.
  /// [name] The name of the resource
  /// [resourceId] Azure Resource Id of a log target (either Azure Event Hub resource or Azure Application Insights resource).
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetLoggerResult({
    required this.azureApiVersion,
    this.credentials,
    this.description,
    required this.id,
    this.isBuffered,
    required this.loggerType,
    required this.name,
    this.resourceId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'credentials': ?credentials,
      'description': ?description,
      'id': id,
      'isBuffered': ?isBuffered,
      'loggerType': loggerType,
      'name': name,
      'resourceId': ?resourceId,
      'type': type,
    };
  }

  factory GetLoggerResult.fromMap(Map<String, dynamic> map) {
    return GetLoggerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      isBuffered: (() { final guardedValue = map['isBuffered']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      loggerType: map['loggerType'] as String,
      name: map['name'] as String,
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

