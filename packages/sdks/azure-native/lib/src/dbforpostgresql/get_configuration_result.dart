// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getConfiguration.
class GetConfigurationResult {
  /// Allowed values of the configuration (also known as server parameter).
  final String? allowedValues;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Data type of the configuration (also known as server parameter).
  final String? dataType;
  /// Value assigned by default to the configuration (also known as server parameter).
  final String? defaultValue;
  /// Description of the configuration (also known as server parameter).
  final String? description;
  /// Link pointing to the documentation of the configuration (also known as server parameter).
  final String? documentationLink;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Indicates if the value assigned to the configuration (also known as server parameter) is pending a server restart for it to take effect.
  final bool? isConfigPendingRestart;
  /// Indicates if it's a dynamic (true) or static (false) configuration (also known as server parameter). Static server parameters require a server restart after changing the value assigned to them, for the change to take effect. Dynamic server parameters do not require a server restart after changing the value assigned to them, for the change to take effect.
  final bool? isDynamicConfig;
  /// Indicates if it's a read-only (true) or modifiable (false) configuration (also known as server parameter).
  final bool? isReadOnly;
  /// The name of the resource
  final String? name;
  /// Source of the value assigned to the configuration (also known as server parameter). Required to update the value assigned to a specific modifiable configuration.
  final String? source;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Units in which the configuration (also known as server parameter) value is expressed.
  final String? unit;
  /// Value of the configuration (also known as server parameter). Required to update the value assigned to a specific modifiable configuration.
  final String? value;

  /// Creates a new [GetConfigurationResult].
  /// [allowedValues] Allowed values of the configuration (also known as server parameter).
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataType] Data type of the configuration (also known as server parameter).
  /// [defaultValue] Value assigned by default to the configuration (also known as server parameter).
  /// [description] Description of the configuration (also known as server parameter).
  /// [documentationLink] Link pointing to the documentation of the configuration (also known as server parameter).
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isConfigPendingRestart] Indicates if the value assigned to the configuration (also known as server parameter) is pending a server restart for it to take effect.
  /// [isDynamicConfig] Indicates if it's a dynamic (true) or static (false) configuration (also known as server parameter). Static server parameters require a server restart after changing the value assigned to them, for the change to take effect. Dynamic server parameters do not require a server restart after changing the value assigned to them, for the change to take effect.
  /// [isReadOnly] Indicates if it's a read-only (true) or modifiable (false) configuration (also known as server parameter).
  /// [name] The name of the resource
  /// [source] Source of the value assigned to the configuration (also known as server parameter). Required to update the value assigned to a specific modifiable configuration.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [unit] Units in which the configuration (also known as server parameter) value is expressed.
  /// [value] Value of the configuration (also known as server parameter). Required to update the value assigned to a specific modifiable configuration.
  const GetConfigurationResult({
    this.allowedValues,
    this.azureApiVersion,
    this.dataType,
    this.defaultValue,
    this.description,
    this.documentationLink,
    this.id,
    this.isConfigPendingRestart,
    this.isDynamicConfig,
    this.isReadOnly,
    this.name,
    this.source,
    this.systemData,
    this.type,
    this.unit,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': ?allowedValues,
      'azureApiVersion': ?azureApiVersion,
      'dataType': ?dataType,
      'defaultValue': ?defaultValue,
      'description': ?description,
      'documentationLink': ?documentationLink,
      'id': ?id,
      'isConfigPendingRestart': ?isConfigPendingRestart,
      'isDynamicConfig': ?isDynamicConfig,
      'isReadOnly': ?isReadOnly,
      'name': ?name,
      'source': ?source,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'unit': ?unit,
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
      documentationLink: (() { final guardedValue = map['documentationLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isConfigPendingRestart: (() { final guardedValue = map['isConfigPendingRestart']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isDynamicConfig: (() { final guardedValue = map['isDynamicConfig']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isReadOnly: (() { final guardedValue = map['isReadOnly']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      unit: (() { final guardedValue = map['unit']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
