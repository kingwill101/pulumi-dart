// ignore_for_file: unused_element, unnecessary_cast

import 'my_workbook_managed_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMyWorkbook.
class GetMyWorkbookResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Workbook category, as defined by the user at creation time.
  final String category;
  /// The user-defined name of the private workbook.
  final String displayName;
  /// Resource etag
  final Map<String, String>? etag;
  /// Azure resource Id
  final String? id;
  /// Identity used for BYOS
  final MyWorkbookManagedIdentityResponse? identity;
  /// The kind of workbook. Choices are user and shared.
  final String? kind;
  /// Resource location
  final String? location;
  /// Azure resource name
  final String? name;
  /// Configuration of this particular private workbook. Configuration data is a string containing valid JSON
  final String serializedData;
  /// Optional resourceId for a source resource.
  final String? sourceId;
  /// BYOS Storage Account URI
  final String? storageUri;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// Date and time in UTC of the last modification that was made to this private workbook definition.
  final String timeModified;
  /// Azure resource type
  final String? type;
  /// Unique user id of the specific user that owns this private workbook.
  final String userId;
  /// This instance's version of the data model. This can change as new features are added that can be marked private workbook.
  final String? version;

  /// Creates a new [GetMyWorkbookResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [category] Workbook category, as defined by the user at creation time.
  /// [displayName] The user-defined name of the private workbook.
  /// [etag] Resource etag
  /// [id] Azure resource Id
  /// [identity] Identity used for BYOS
  /// [kind] The kind of workbook. Choices are user and shared.
  /// [location] Resource location
  /// [name] Azure resource name
  /// [serializedData] Configuration of this particular private workbook. Configuration data is a string containing valid JSON
  /// [sourceId] Optional resourceId for a source resource.
  /// [storageUri] BYOS Storage Account URI
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Resource tags
  /// [timeModified] Date and time in UTC of the last modification that was made to this private workbook definition.
  /// [type] Azure resource type
  /// [userId] Unique user id of the specific user that owns this private workbook.
  /// [version] This instance's version of the data model. This can change as new features are added that can be marked private workbook.
  GetMyWorkbookResult({
    required this.azureApiVersion,
    required this.category,
    required this.displayName,
    this.etag,
    this.id,
    this.identity,
    this.kind,
    this.location,
    this.name,
    required this.serializedData,
    this.sourceId,
    this.storageUri,
    required this.systemData,
    this.tags,
    required this.timeModified,
    this.type,
    required this.userId,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'category': category,
      'displayName': displayName,
      'etag': ?etag,
      'id': ?id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'serializedData': serializedData,
      'sourceId': ?sourceId,
      'storageUri': ?storageUri,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'timeModified': timeModified,
      'type': ?type,
      'userId': userId,
      'version': ?version,
    };
  }

  factory GetMyWorkbookResult.fromMap(Map<String, dynamic> map) {
    return GetMyWorkbookResult(
      azureApiVersion: map['azureApiVersion'] as String,
      category: map['category'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] == null ? null : (map['etag']! as Map).cast<String, String>(),
      id: map['id'] == null ? null : map['id']! as String,
      identity: map['identity'] == null ? null : MyWorkbookManagedIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind']! as String,
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] == null ? null : map['name']! as String,
      serializedData: map['serializedData'] as String,
      sourceId: map['sourceId'] == null ? null : map['sourceId']! as String,
      storageUri: map['storageUri'] == null ? null : map['storageUri']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      timeModified: map['timeModified'] as String,
      type: map['type'] == null ? null : map['type']! as String,
      userId: map['userId'] as String,
      version: map['version'] == null ? null : map['version']! as String,
    );
  }
}

