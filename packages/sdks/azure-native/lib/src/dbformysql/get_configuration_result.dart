// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getConfiguration.
class GetConfigurationResult {
  /// Allowed values of the configuration.
  final String allowedValues;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Current value of the configuration.
  final String? currentValue;

  /// Data type of the configuration.
  final String dataType;

  /// Default value of the configuration.
  final String defaultValue;

  /// Description of the configuration.
  final String description;

  /// The link used to get the document from community or Azure site.
  final String documentationLink;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// If is the configuration pending restart or not.
  final String isConfigPendingRestart;

  /// If is the configuration dynamic.
  final String isDynamicConfig;

  /// If is the configuration read only.
  final String isReadOnly;

  /// The name of the resource
  final String name;

  /// Source of the configuration.
  final String? source;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Value of the configuration.
  final String? value;

  /// Creates a new [GetConfigurationResult].
  /// [allowedValues] Allowed values of the configuration.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [currentValue] Current value of the configuration.
  /// [dataType] Data type of the configuration.
  /// [defaultValue] Default value of the configuration.
  /// [description] Description of the configuration.
  /// [documentationLink] The link used to get the document from community or Azure site.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isConfigPendingRestart] If is the configuration pending restart or not.
  /// [isDynamicConfig] If is the configuration dynamic.
  /// [isReadOnly] If is the configuration read only.
  /// [name] The name of the resource
  /// [source] Source of the configuration.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [value] Value of the configuration.
  GetConfigurationResult({
    required this.allowedValues,
    required this.azureApiVersion,
    this.currentValue,
    required this.dataType,
    required this.defaultValue,
    required this.description,
    required this.documentationLink,
    required this.id,
    required this.isConfigPendingRestart,
    required this.isDynamicConfig,
    required this.isReadOnly,
    required this.name,
    this.source,
    required this.systemData,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': allowedValues,
      'azureApiVersion': azureApiVersion,
      'currentValue': ?currentValue,
      'dataType': dataType,
      'defaultValue': defaultValue,
      'description': description,
      'documentationLink': documentationLink,
      'id': id,
      'isConfigPendingRestart': isConfigPendingRestart,
      'isDynamicConfig': isDynamicConfig,
      'isReadOnly': isReadOnly,
      'name': name,
      'source': ?source,
      'systemData': systemData.toMap(),
      'type': type,
      'value': ?value,
    };
  }

  factory GetConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationResult(
      allowedValues: map['allowedValues'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      currentValue: (() {
        final guardedValue = map['currentValue'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      dataType: map['dataType'] as String,
      defaultValue: map['defaultValue'] as String,
      description: map['description'] as String,
      documentationLink: map['documentationLink'] as String,
      id: map['id'] as String,
      isConfigPendingRestart: map['isConfigPendingRestart'] as String,
      isDynamicConfig: map['isDynamicConfig'] as String,
      isReadOnly: map['isReadOnly'] as String,
      name: map['name'] as String,
      source: (() {
        final guardedValue = map['source'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
