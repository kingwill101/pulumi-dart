// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getExtension.
class GetExtensionResult {
  /// Additional Api Properties.
  final Map<String, ApiPropertiesResponse>? additionalApiProperties;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The ETag value to implement optimistic concurrency.
  final String? eTag;
  /// Extension api docs link.
  final String? extensionApiDocsLink;
  /// Extension auth link.
  final String? extensionAuthLink;
  /// Extension category. e.g. weather/sensor/satellite.
  final String? extensionCategory;
  /// Extension Id.
  final String? extensionId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Installed extension version.
  final String? installedExtensionVersion;
  /// The name of the resource
  final String? name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetExtensionResult].
  /// [additionalApiProperties] Additional Api Properties.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eTag] The ETag value to implement optimistic concurrency.
  /// [extensionApiDocsLink] Extension api docs link.
  /// [extensionAuthLink] Extension auth link.
  /// [extensionCategory] Extension category. e.g. weather/sensor/satellite.
  /// [extensionId] Extension Id.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [installedExtensionVersion] Installed extension version.
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetExtensionResult({
    this.additionalApiProperties,
    this.azureApiVersion,
    this.eTag,
    this.extensionApiDocsLink,
    this.extensionAuthLink,
    this.extensionCategory,
    this.extensionId,
    this.id,
    this.installedExtensionVersion,
    this.name,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalApiProperties': ?(() { final guardedValue = additionalApiProperties; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<ApiPropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': ?azureApiVersion,
      'eTag': ?eTag,
      'extensionApiDocsLink': ?extensionApiDocsLink,
      'extensionAuthLink': ?extensionAuthLink,
      'extensionCategory': ?extensionCategory,
      'extensionId': ?extensionId,
      'id': ?id,
      'installedExtensionVersion': ?installedExtensionVersion,
      'name': ?name,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetExtensionResult.fromMap(Map<String, dynamic> map) {
    return GetExtensionResult(
      additionalApiProperties: (() { final guardedValue = map['additionalApiProperties']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<ApiPropertiesResponse>(guardedValue, (value) => ApiPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extensionApiDocsLink: (() { final guardedValue = map['extensionApiDocsLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extensionAuthLink: (() { final guardedValue = map['extensionAuthLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extensionCategory: (() { final guardedValue = map['extensionCategory']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extensionId: (() { final guardedValue = map['extensionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      installedExtensionVersion: (() { final guardedValue = map['installedExtensionVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
