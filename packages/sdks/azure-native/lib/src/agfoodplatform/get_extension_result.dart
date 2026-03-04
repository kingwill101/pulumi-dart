// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getExtension.
class GetExtensionResult {
  /// Additional Api Properties.
  final Map<String, ApiPropertiesResponse> additionalApiProperties;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The ETag value to implement optimistic concurrency.
  final String eTag;

  /// Extension api docs link.
  final String extensionApiDocsLink;

  /// Extension auth link.
  final String extensionAuthLink;

  /// Extension category. e.g. weather/sensor/satellite.
  final String extensionCategory;

  /// Extension Id.
  final String extensionId;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// Installed extension version.
  final String installedExtensionVersion;

  /// The name of the resource
  final String name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
  GetExtensionResult({
    required this.additionalApiProperties,
    required this.azureApiVersion,
    required this.eTag,
    required this.extensionApiDocsLink,
    required this.extensionAuthLink,
    required this.extensionCategory,
    required this.extensionId,
    required this.id,
    required this.installedExtensionVersion,
    required this.name,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalApiProperties':
          pulumi.Input.encodeMapValues<
            ApiPropertiesResponse,
            Map<String, dynamic>
          >(additionalApiProperties, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'eTag': eTag,
      'extensionApiDocsLink': extensionApiDocsLink,
      'extensionAuthLink': extensionAuthLink,
      'extensionCategory': extensionCategory,
      'extensionId': extensionId,
      'id': id,
      'installedExtensionVersion': installedExtensionVersion,
      'name': name,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetExtensionResult.fromMap(Map<String, dynamic> map) {
    return GetExtensionResult(
      additionalApiProperties:
          pulumi.Input.decodeMapValues<ApiPropertiesResponse>(
            map['additionalApiProperties']!,
            (value) => ApiPropertiesResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      azureApiVersion: map['azureApiVersion'] as String,
      eTag: map['eTag'] as String,
      extensionApiDocsLink: map['extensionApiDocsLink'] as String,
      extensionAuthLink: map['extensionAuthLink'] as String,
      extensionCategory: map['extensionCategory'] as String,
      extensionId: map['extensionId'] as String,
      id: map['id'] as String,
      installedExtensionVersion: map['installedExtensionVersion'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
