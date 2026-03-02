// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getApplication.
class GetApplicationResult {
  /// A value indicating whether packages within the application may be overwritten using the same version string.
  final bool? allowUpdates;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The package to use if a client requests the application but does not specify a version. This property can only be set to the name of an existing package.
  final String? defaultVersion;
  /// The display name for the application.
  final String? displayName;
  /// The ETag of the resource, used for concurrency statements.
  final String etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The tags of the resource.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetApplicationResult].
  /// [allowUpdates] A value indicating whether packages within the application may be overwritten using the same version string.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [defaultVersion] The package to use if a client requests the application but does not specify a version. This property can only be set to the name of an existing package.
  /// [displayName] The display name for the application.
  /// [etag] The ETag of the resource, used for concurrency statements.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] The tags of the resource.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetApplicationResult({
    this.allowUpdates,
    required this.azureApiVersion,
    this.defaultVersion,
    this.displayName,
    required this.etag,
    required this.id,
    required this.name,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowUpdates': ?allowUpdates,
      'azureApiVersion': azureApiVersion,
      'defaultVersion': ?defaultVersion,
      'displayName': ?displayName,
      'etag': etag,
      'id': id,
      'name': name,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationResult(
      allowUpdates: map['allowUpdates'] == null ? null : map['allowUpdates']! as bool,
      azureApiVersion: map['azureApiVersion'] as String,
      defaultVersion: map['defaultVersion'] == null ? null : map['defaultVersion']! as String,
      displayName: map['displayName'] == null ? null : map['displayName']! as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

