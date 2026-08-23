// ignore_for_file: unused_element, unnecessary_cast

import 'partner_content_response.dart';

/// Result data returned by getIntegrationAccountPartner.
class GetIntegrationAccountPartnerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The changed time.
  final String changedTime;
  /// The partner content.
  final PartnerContentResponse content;
  /// The created time.
  final String createdTime;
  /// The resource id.
  final String id;
  /// The resource location.
  final String? location;
  /// The metadata.
  final dynamic metadata;
  /// Gets the resource name.
  final String name;
  /// The partner type.
  final String partnerType;
  /// The resource tags.
  final Map<String, String>? tags;
  /// Gets the resource type.
  final String type;

  /// Creates a new [GetIntegrationAccountPartnerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [changedTime] The changed time.
  /// [content] The partner content.
  /// [createdTime] The created time.
  /// [id] The resource id.
  /// [location] The resource location.
  /// [metadata] The metadata.
  /// [name] Gets the resource name.
  /// [partnerType] The partner type.
  /// [tags] The resource tags.
  /// [type] Gets the resource type.
  const GetIntegrationAccountPartnerResult({
    required this.azureApiVersion,
    required this.changedTime,
    required this.content,
    required this.createdTime,
    required this.id,
    this.location,
    this.metadata,
    required this.name,
    required this.partnerType,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'changedTime': changedTime,
      'content': content.toMap(),
      'createdTime': createdTime,
      'id': id,
      'location': ?location,
      'metadata': ?metadata,
      'name': name,
      'partnerType': partnerType,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetIntegrationAccountPartnerResult.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountPartnerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      changedTime: map['changedTime'] as String,
      content: PartnerContentResponse.fromMap((map['content']! as Map).cast<String, dynamic>()),
      createdTime: map['createdTime'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return guardedValue; })(),
      name: map['name'] as String,
      partnerType: map['partnerType'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
