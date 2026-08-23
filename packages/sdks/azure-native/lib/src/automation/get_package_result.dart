// ignore_for_file: unused_element, unnecessary_cast

import 'content_link_response.dart';
import 'package_error_info_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPackage.
class GetPackageResult {
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse allOf;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the contentLink of the Package.
  final ContentLinkResponse? contentLink;
  /// Gets or sets the isGlobal flag of the package.
  final bool? default_;
  /// Gets or sets the error info of the Package.
  final PackageErrorInfoResponse? error;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Gets or sets the provisioning state of the Package.
  final String provisioningState;
  /// Gets or sets the size in bytes of the Package.
  final double? sizeInBytes;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Gets or sets the version of the Package.
  final String? version;

  /// Creates a new [GetPackageResult].
  /// [allOf] Metadata pertaining to creation and last modification of the resource.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [contentLink] Gets or sets the contentLink of the Package.
  /// [default_] Gets or sets the isGlobal flag of the package.
  /// [error] Gets or sets the error info of the Package.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Gets or sets the provisioning state of the Package.
  /// [sizeInBytes] Gets or sets the size in bytes of the Package.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] Gets or sets the version of the Package.
  const GetPackageResult({
    required this.allOf,
    required this.azureApiVersion,
    this.contentLink,
    this.default_,
    this.error,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    this.sizeInBytes,
    required this.systemData,
    this.tags,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allOf': allOf.toMap(),
      'azureApiVersion': azureApiVersion,
      'contentLink': ?contentLink?.toMap(),
      'default': ?default_,
      'error': ?error?.toMap(),
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'sizeInBytes': ?sizeInBytes,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'version': ?version,
    };
  }

  factory GetPackageResult.fromMap(Map<String, dynamic> map) {
    return GetPackageResult(
      allOf: SystemDataResponse.fromMap((map['allOf']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      contentLink: (() { final guardedValue = map['contentLink']; if (guardedValue == null) return null; return ContentLinkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return PackageErrorInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      sizeInBytes: (() { final guardedValue = map['sizeInBytes']; if (guardedValue == null) return null; return guardedValue as double; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
