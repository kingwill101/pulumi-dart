// ignore_for_file: unused_element, unnecessary_cast

import 'content_link_response.dart';
import 'module_error_info_response.dart';
import 'system_data_response.dart';

/// Result data returned by getModule.
class GetModuleResult {
  /// Gets or sets the activity count of the module.
  final int? activityCount;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the contentLink of the module.
  final ContentLinkResponse? contentLink;
  /// Gets or sets the creation time.
  final String? creationTime;
  /// Gets or sets the description.
  final String? description;
  /// Gets or sets the error info of the module.
  final ModuleErrorInfoResponse? error;
  /// Gets or sets the etag of the resource.
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Gets or sets type of module, if its composite or not.
  final bool? isComposite;
  /// Gets or sets the isGlobal flag of the module.
  final bool? isGlobal;
  /// Gets or sets the last modified time.
  final String? lastModifiedTime;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Gets or sets the provisioning state of the module.
  final String? provisioningState;
  /// Gets or sets the size in bytes of the module.
  final double? sizeInBytes;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Gets or sets the version of the module.
  final String? version;

  /// Creates a new [GetModuleResult].
  /// [activityCount] Gets or sets the activity count of the module.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [contentLink] Gets or sets the contentLink of the module.
  /// [creationTime] Gets or sets the creation time.
  /// [description] Gets or sets the description.
  /// [error] Gets or sets the error info of the module.
  /// [etag] Gets or sets the etag of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isComposite] Gets or sets type of module, if its composite or not.
  /// [isGlobal] Gets or sets the isGlobal flag of the module.
  /// [lastModifiedTime] Gets or sets the last modified time.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Gets or sets the provisioning state of the module.
  /// [sizeInBytes] Gets or sets the size in bytes of the module.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] Gets or sets the version of the module.
  const GetModuleResult({
    this.activityCount,
    required this.azureApiVersion,
    this.contentLink,
    this.creationTime,
    this.description,
    this.error,
    this.etag,
    required this.id,
    this.isComposite,
    this.isGlobal,
    this.lastModifiedTime,
    required this.location,
    required this.name,
    this.provisioningState,
    this.sizeInBytes,
    required this.systemData,
    this.tags,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activityCount': ?activityCount,
      'azureApiVersion': azureApiVersion,
      'contentLink': ?contentLink?.toMap(),
      'creationTime': ?creationTime,
      'description': ?description,
      'error': ?error?.toMap(),
      'etag': ?etag,
      'id': id,
      'isComposite': ?isComposite,
      'isGlobal': ?isGlobal,
      'lastModifiedTime': ?lastModifiedTime,
      'location': location,
      'name': name,
      'provisioningState': ?provisioningState,
      'sizeInBytes': ?sizeInBytes,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'version': ?version,
    };
  }

  factory GetModuleResult.fromMap(Map<String, dynamic> map) {
    return GetModuleResult(
      activityCount: (() { final guardedValue = map['activityCount']; if (guardedValue == null) return null; return guardedValue as int; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      contentLink: (() { final guardedValue = map['contentLink']; if (guardedValue == null) return null; return ContentLinkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return ModuleErrorInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      isComposite: (() { final guardedValue = map['isComposite']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isGlobal: (() { final guardedValue = map['isGlobal']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sizeInBytes: (() { final guardedValue = map['sizeInBytes']; if (guardedValue == null) return null; return guardedValue as double; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
