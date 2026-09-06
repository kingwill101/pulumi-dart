// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConfiguration.
class GetConfigurationResult {
  /// Allowed values of the configuration.
  final String? allowedValues;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Data type of the configuration.
  final String? dataType;
  /// Default value of the configuration.
  final String? defaultValue;
  /// Description of the configuration.
  final String? description;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// Source of the configuration.
  final String? source;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
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
  const GetConfigurationResult({
    this.allowedValues,
    this.azureApiVersion,
    this.dataType,
    this.defaultValue,
    this.description,
    this.id,
    this.name,
    this.source,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': ?allowedValues,
      'azureApiVersion': ?azureApiVersion,
      'dataType': ?dataType,
      'defaultValue': ?defaultValue,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'source': ?source,
      'type': ?type,
      'value': ?value,
    };
  }

  factory GetConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationResult(
      allowedValues: (() { final guardedValue = map['allowedValues']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
