// ignore_for_file: unused_element, unnecessary_cast

import 'connector_collection_info_response.dart';

/// Result data returned by getConnector.
class GetConnectorResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Collection information
  final ConnectorCollectionInfoResponse collection;
  /// Connector definition creation datetime
  final String createdOn;
  /// Credentials authentication key (eg AWS ARN)
  final String? credentialsKey;
  /// Connector DisplayName (defaults to Name)
  final String? displayName;
  /// Connector id
  final String id;
  /// Connector kind (eg aws)
  final String? kind;
  /// Connector location
  final String? location;
  /// Connector last modified datetime
  final String modifiedOn;
  /// Connector name
  final String name;
  /// Connector providerAccountId (determined from credentials)
  final String providerAccountId;
  /// Identifying source report. (For AWS this is a CUR report name, defined with Daily and with Resources)
  final String? reportId;
  /// Connector status
  final String? status;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Connector type
  final String type;

  /// Creates a new [GetConnectorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [collection] Collection information
  /// [createdOn] Connector definition creation datetime
  /// [credentialsKey] Credentials authentication key (eg AWS ARN)
  /// [displayName] Connector DisplayName (defaults to Name)
  /// [id] Connector id
  /// [kind] Connector kind (eg aws)
  /// [location] Connector location
  /// [modifiedOn] Connector last modified datetime
  /// [name] Connector name
  /// [providerAccountId] Connector providerAccountId (determined from credentials)
  /// [reportId] Identifying source report. (For AWS this is a CUR report name, defined with Daily and with Resources)
  /// [status] Connector status
  /// [tags] Resource tags.
  /// [type] Connector type
  GetConnectorResult({
    required this.azureApiVersion,
    required this.collection,
    required this.createdOn,
    this.credentialsKey,
    this.displayName,
    required this.id,
    this.kind,
    this.location,
    required this.modifiedOn,
    required this.name,
    required this.providerAccountId,
    this.reportId,
    this.status,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'collection': collection.toMap(),
      'createdOn': createdOn,
      'credentialsKey': ?credentialsKey,
      'displayName': ?displayName,
      'id': id,
      'kind': ?kind,
      'location': ?location,
      'modifiedOn': modifiedOn,
      'name': name,
      'providerAccountId': providerAccountId,
      'reportId': ?reportId,
      'status': ?status,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetConnectorResult(
      azureApiVersion: map['azureApiVersion'] as String,
      collection: ConnectorCollectionInfoResponse.fromMap((map['collection'] as Map).cast<String, dynamic>()),
      createdOn: map['createdOn'] as String,
      credentialsKey: map['credentialsKey'] == null ? null : map['credentialsKey']! as String,
      displayName: map['displayName'] == null ? null : map['displayName']! as String,
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind']! as String,
      location: map['location'] == null ? null : map['location']! as String,
      modifiedOn: map['modifiedOn'] as String,
      name: map['name'] as String,
      providerAccountId: map['providerAccountId'] as String,
      reportId: map['reportId'] == null ? null : map['reportId']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

