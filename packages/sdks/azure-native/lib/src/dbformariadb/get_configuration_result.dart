// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConfiguration.
class GetConfigurationResult {
  /// Allowed values of the configuration.
  final String allowedValues;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Data type of the configuration.
  final String dataType;
  /// Default value of the configuration.
  final String defaultValue;
  /// Description of the configuration.
  final String description;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Source of the configuration.
  final String? source;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Value of the configuration.
  final String? value;

  /// Creates a new [GetConfigurationResult].
  /// [allowedValues] Allowed values of the configuration.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataType] Data type of the configuration.
  /// [defaultValue] Default value of the configuration.
  /// [description] Description of the configuration.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [source] Source of the configuration.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [value] Value of the configuration.
  GetConfigurationResult({
    required this.allowedValues,
    required this.azureApiVersion,
    required this.dataType,
    required this.defaultValue,
    required this.description,
    required this.id,
    required this.name,
    this.source,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': allowedValues,
      'azureApiVersion': azureApiVersion,
      'dataType': dataType,
      'defaultValue': defaultValue,
      'description': description,
      'id': id,
      'name': name,
      'source': ?source,
      'type': type,
      'value': ?value,
    };
  }

  factory GetConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationResult(
      allowedValues: map['allowedValues'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      dataType: map['dataType'] as String,
      defaultValue: map['defaultValue'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      source: map['source'] == null ? null : map['source']! as String,
      type: map['type'] as String,
      value: map['value'] == null ? null : map['value']! as String,
    );
  }
}

