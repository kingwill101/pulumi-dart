// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApiTagDescription.
class GetApiTagDescriptionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Description of the Tag.
  final String? description;
  /// Tag name.
  final String? displayName;
  /// Description of the external resources describing the tag.
  final String? externalDocsDescription;
  /// Absolute URL of external resources describing the tag.
  final String? externalDocsUrl;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Identifier of the tag in the form of /tags/{tagId}
  final String? tagId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetApiTagDescriptionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Description of the Tag.
  /// [displayName] Tag name.
  /// [externalDocsDescription] Description of the external resources describing the tag.
  /// [externalDocsUrl] Absolute URL of external resources describing the tag.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [tagId] Identifier of the tag in the form of /tags/{tagId}
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetApiTagDescriptionResult({
    required this.azureApiVersion,
    this.description,
    this.displayName,
    this.externalDocsDescription,
    this.externalDocsUrl,
    required this.id,
    required this.name,
    this.tagId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'externalDocsDescription': ?externalDocsDescription,
      'externalDocsUrl': ?externalDocsUrl,
      'id': id,
      'name': name,
      'tagId': ?tagId,
      'type': type,
    };
  }

  factory GetApiTagDescriptionResult.fromMap(Map<String, dynamic> map) {
    return GetApiTagDescriptionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description']! as String,
      displayName: map['displayName'] == null ? null : map['displayName']! as String,
      externalDocsDescription: map['externalDocsDescription'] == null ? null : map['externalDocsDescription']! as String,
      externalDocsUrl: map['externalDocsUrl'] == null ? null : map['externalDocsUrl']! as String,
      id: map['id'] as String,
      name: map['name'] as String,
      tagId: map['tagId'] == null ? null : map['tagId']! as String,
      type: map['type'] as String,
    );
  }
}

