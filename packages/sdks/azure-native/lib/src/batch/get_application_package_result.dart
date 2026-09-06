// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getApplicationPackage.
class GetApplicationPackageResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The ETag of the resource, used for concurrency statements.
  final String? etag;
  /// The format of the application package, if the package is active.
  final String? format;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The time at which the package was last activated, if the package is active.
  final String? lastActivationTime;
  /// The name of the resource
  final String? name;
  /// The current state of the application package.
  final String? state;
  /// The URL for the application package in Azure Storage.
  final String? storageUrl;
  /// The UTC time at which the Azure Storage URL will expire.
  final String? storageUrlExpiry;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The tags of the resource.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetApplicationPackageResult({
    this.azureApiVersion,
    this.etag,
    this.format,
    this.id,
    this.lastActivationTime,
    this.name,
    this.state,
    this.storageUrl,
    this.storageUrlExpiry,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'format': ?format,
      'id': ?id,
      'lastActivationTime': ?lastActivationTime,
      'name': ?name,
      'state': ?state,
      'storageUrl': ?storageUrl,
      'storageUrlExpiry': ?storageUrlExpiry,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetApplicationPackageResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationPackageResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastActivationTime: (() { final guardedValue = map['lastActivationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageUrl: (() { final guardedValue = map['storageUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageUrlExpiry: (() { final guardedValue = map['storageUrlExpiry']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
