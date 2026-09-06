// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getArtifactSource.
class GetArtifactSourceResult {
  /// The folder containing Azure Resource Manager templates.
  final String? armTemplateFolderPath;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The artifact source's branch reference.
  final String? branchRef;
  /// The artifact source's creation date.
  final String? createdDate;
  /// The artifact source's display name.
  final String? displayName;
  /// The folder containing artifacts.
  final String? folderPath;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The provisioning status of the resource.
  final String? provisioningState;
  /// The security token to authenticate to the artifact source.
  final String? securityToken;
  /// The artifact source's type.
  final String? sourceType;
  /// Indicates if the artifact source is enabled (values: Enabled, Disabled).
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The unique immutable identifier of a resource (Guid).
  final String? uniqueIdentifier;
  /// The artifact source's URI.
  final String? uri;

  /// Creates a new [GetArtifactSourceResult].
  /// [armTemplateFolderPath] The folder containing Azure Resource Manager templates.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [branchRef] The artifact source's branch reference.
  /// [createdDate] The artifact source's creation date.
  /// [displayName] The artifact source's display name.
  /// [folderPath] The folder containing artifacts.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning status of the resource.
  /// [securityToken] The security token to authenticate to the artifact source.
  /// [sourceType] The artifact source's type.
  /// [status] Indicates if the artifact source is enabled (values: Enabled, Disabled).
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uniqueIdentifier] The unique immutable identifier of a resource (Guid).
  /// [uri] The artifact source's URI.
  const GetArtifactSourceResult({
    this.armTemplateFolderPath,
    this.azureApiVersion,
    this.branchRef,
    this.createdDate,
    this.displayName,
    this.folderPath,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.securityToken,
    this.sourceType,
    this.status,
    this.systemData,
    this.tags,
    this.type,
    this.uniqueIdentifier,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'armTemplateFolderPath': ?armTemplateFolderPath,
      'azureApiVersion': ?azureApiVersion,
      'branchRef': ?branchRef,
      'createdDate': ?createdDate,
      'displayName': ?displayName,
      'folderPath': ?folderPath,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'securityToken': ?securityToken,
      'sourceType': ?sourceType,
      'status': ?status,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'uniqueIdentifier': ?uniqueIdentifier,
      'uri': ?uri,
    };
  }

  factory GetArtifactSourceResult.fromMap(Map<String, dynamic> map) {
    return GetArtifactSourceResult(
      armTemplateFolderPath: (() { final guardedValue = map['armTemplateFolderPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      branchRef: (() { final guardedValue = map['branchRef']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      folderPath: (() { final guardedValue = map['folderPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityToken: (() { final guardedValue = map['securityToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uniqueIdentifier: (() { final guardedValue = map['uniqueIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
