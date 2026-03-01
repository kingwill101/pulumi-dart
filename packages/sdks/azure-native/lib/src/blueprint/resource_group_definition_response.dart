// ignore_for_file: unused_element, unnecessary_cast


/// Represents an Azure resource group in a blueprint definition.
class ResourceGroupDefinitionResponse {
  /// Artifacts which need to be deployed before this resource group.
  final List<String>? dependsOn;
  /// Description of this parameter/resourceGroup.
  final String? description;
  /// DisplayName of this parameter/resourceGroup.
  final String? displayName;
  /// Location of this resourceGroup. Leave empty if the resource group location will be specified during the blueprint assignment.
  final String? location;
  /// Name of this resourceGroup. Leave empty if the resource group name will be specified during the blueprint assignment.
  final String? name;
  /// StrongType for UI to render rich experience during blueprint assignment. Supported strong types are resourceType, principalId and location.
  final String? strongType;
  /// Tags to be assigned to this resource group.
  final Map<String, String>? tags;

  /// Creates a new [ResourceGroupDefinitionResponse].
  /// [dependsOn] Artifacts which need to be deployed before this resource group.
  /// [description] Description of this parameter/resourceGroup.
  /// [displayName] DisplayName of this parameter/resourceGroup.
  /// [location] Location of this resourceGroup. Leave empty if the resource group location will be specified during the blueprint assignment.
  /// [name] Name of this resourceGroup. Leave empty if the resource group name will be specified during the blueprint assignment.
  /// [strongType] StrongType for UI to render rich experience during blueprint assignment. Supported strong types are resourceType, principalId and location.
  /// [tags] Tags to be assigned to this resource group.
  ResourceGroupDefinitionResponse({
    this.dependsOn,
    this.description,
    this.displayName,
    this.location,
    this.name,
    this.strongType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependsOn': ?dependsOn,
      'description': ?description,
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'strongType': ?strongType,
      'tags': ?tags,
    };
  }

  factory ResourceGroupDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ResourceGroupDefinitionResponse(
      dependsOn: map['dependsOn'] == null ? null : (map['dependsOn'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      strongType: map['strongType'] == null ? null : map['strongType'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

