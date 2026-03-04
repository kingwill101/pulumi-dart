// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getApplicationPackage.
class GetApplicationPackageResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The ETag of the resource, used for concurrency statements.
  final String etag;

  /// The format of the application package, if the package is active.
  final String format;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The time at which the package was last activated, if the package is active.
  final String lastActivationTime;

  /// The name of the resource
  final String name;

  /// The current state of the application package.
  final String state;

  /// The URL for the application package in Azure Storage.
  final String storageUrl;

  /// The UTC time at which the Azure Storage URL will expire.
  final String storageUrlExpiry;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The tags of the resource.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetApplicationPackageResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] The ETag of the resource, used for concurrency statements.
  /// [format] The format of the application package, if the package is active.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [lastActivationTime] The time at which the package was last activated, if the package is active.
  /// [name] The name of the resource
  /// [state] The current state of the application package.
  /// [storageUrl] The URL for the application package in Azure Storage.
  /// [storageUrlExpiry] The UTC time at which the Azure Storage URL will expire.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] The tags of the resource.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetApplicationPackageResult({
    required this.azureApiVersion,
    required this.etag,
    required this.format,
    required this.id,
    required this.lastActivationTime,
    required this.name,
    required this.state,
    required this.storageUrl,
    required this.storageUrlExpiry,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'format': format,
      'id': id,
      'lastActivationTime': lastActivationTime,
      'name': name,
      'state': state,
      'storageUrl': storageUrl,
      'storageUrlExpiry': storageUrlExpiry,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetApplicationPackageResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationPackageResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      format: map['format'] as String,
      id: map['id'] as String,
      lastActivationTime: map['lastActivationTime'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      storageUrl: map['storageUrl'] as String,
      storageUrlExpiry: map['storageUrlExpiry'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
    );
  }
}
