// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';
import 'workbook_resource_response_identity.dart';

/// Result data returned by getWorkbook.
class GetWorkbookResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Workbook category, as defined by the user at creation time.
  final String category;
  /// The description of the workbook.
  final String? description;
  /// The user-defined name (display name) of the workbook.
  final String displayName;
  /// Resource etag
  final String? etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Identity used for BYOS
  final WorkbookResourceResponseIdentity? identity;
  /// The kind of workbook. Only valid value is shared.
  final String? kind;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The unique revision id for this workbook definition
  final String revision;
  /// Configuration of this particular workbook. Configuration data is a string containing valid JSON
  final String serializedData;
  /// ResourceId for a source resource.
  final String? sourceId;
  /// The resourceId to the storage account when bring your own storage is used
  final String? storageUri;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Date and time in UTC of the last modification that was made to this workbook definition.
  final String timeModified;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Unique user id of the specific user that owns this workbook.
  final String userId;
  /// Workbook schema version format, like 'Notebook/1.0', which should match the workbook in serializedData
  final String? version;

  /// Creates a new [GetWorkbookResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [category] Workbook category, as defined by the user at creation time.
  /// [description] The description of the workbook.
  /// [displayName] The user-defined name (display name) of the workbook.
  /// [etag] Resource etag
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] Identity used for BYOS
  /// [kind] The kind of workbook. Only valid value is shared.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [revision] The unique revision id for this workbook definition
  /// [serializedData] Configuration of this particular workbook. Configuration data is a string containing valid JSON
  /// [sourceId] ResourceId for a source resource.
  /// [storageUri] The resourceId to the storage account when bring your own storage is used
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Resource tags.
  /// [timeModified] Date and time in UTC of the last modification that was made to this workbook definition.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [userId] Unique user id of the specific user that owns this workbook.
  /// [version] Workbook schema version format, like 'Notebook/1.0', which should match the workbook in serializedData
  const GetWorkbookResult({
    required this.azureApiVersion,
    required this.category,
    this.description,
    required this.displayName,
    this.etag,
    required this.id,
    this.identity,
    this.kind,
    required this.location,
    required this.name,
    required this.revision,
    required this.serializedData,
    this.sourceId,
    this.storageUri,
    required this.systemData,
    this.tags,
    required this.timeModified,
    required this.type,
    required this.userId,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'category': category,
      'description': ?description,
      'displayName': displayName,
      'etag': ?etag,
      'id': id,
      'identity': ?identity?.toMap(),
      'kind': ?kind,
      'location': location,
      'name': name,
      'revision': revision,
      'serializedData': serializedData,
      'sourceId': ?sourceId,
      'storageUri': ?storageUri,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'timeModified': timeModified,
      'type': type,
      'userId': userId,
      'version': ?version,
    };
  }

  factory GetWorkbookResult.fromMap(Map<String, dynamic> map) {
    return GetWorkbookResult(
      azureApiVersion: map['azureApiVersion'] as String,
      category: map['category'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: map['displayName'] as String,
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return WorkbookResourceResponseIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      name: map['name'] as String,
      revision: map['revision'] as String,
      serializedData: map['serializedData'] as String,
      sourceId: (() { final guardedValue = map['sourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageUri: (() { final guardedValue = map['storageUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timeModified: map['timeModified'] as String,
      type: map['type'] as String,
      userId: map['userId'] as String,
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

