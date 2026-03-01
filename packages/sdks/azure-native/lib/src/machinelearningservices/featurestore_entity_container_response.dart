// ignore_for_file: unused_element, unnecessary_cast


/// DTO object representing feature entity
class FeaturestoreEntityContainerResponse {
  /// The asset description text.
  final String? description;
  /// Is the asset archived?
  final bool? isArchived;
  /// The latest version inside this container.
  final String latestVersion;
  /// The next auto incremental version
  final String nextVersion;
  /// The asset property dictionary.
  final Map<String, String>? properties;
  /// Provisioning state for the featurestore entity container.
  final String provisioningState;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;

  /// Creates a new [FeaturestoreEntityContainerResponse].
  /// [description] The asset description text.
  /// [isArchived] Is the asset archived?
  /// [latestVersion] The latest version inside this container.
  /// [nextVersion] The next auto incremental version
  /// [properties] The asset property dictionary.
  /// [provisioningState] Provisioning state for the featurestore entity container.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  FeaturestoreEntityContainerResponse({
    this.description,
    this.isArchived,
    required this.latestVersion,
    required this.nextVersion,
    this.properties,
    required this.provisioningState,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'isArchived': ?isArchived,
      'latestVersion': latestVersion,
      'nextVersion': nextVersion,
      'properties': ?properties,
      'provisioningState': provisioningState,
      'tags': ?tags,
    };
  }

  factory FeaturestoreEntityContainerResponse.fromMap(Map<String, dynamic> map) {
    return FeaturestoreEntityContainerResponse(
      description: map['description'] == null ? null : map['description'] as String,
      isArchived: map['isArchived'] == null ? null : map['isArchived'] as bool,
      latestVersion: map['latestVersion'] as String,
      nextVersion: map['nextVersion'] as String,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      provisioningState: map['provisioningState'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

