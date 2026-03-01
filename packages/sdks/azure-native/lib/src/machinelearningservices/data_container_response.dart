// ignore_for_file: unused_element, unnecessary_cast


/// Container for data asset versions.
class DataContainerResponse {
  /// [Required] Specifies the type of data.
  final String dataType;
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
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;

  /// Creates a new [DataContainerResponse].
  /// [dataType] [Required] Specifies the type of data.
  /// [description] The asset description text.
  /// [isArchived] Is the asset archived?
  /// [latestVersion] The latest version inside this container.
  /// [nextVersion] The next auto incremental version
  /// [properties] The asset property dictionary.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  DataContainerResponse({
    required this.dataType,
    this.description,
    this.isArchived,
    required this.latestVersion,
    required this.nextVersion,
    this.properties,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': dataType,
      'description': ?description,
      'isArchived': ?isArchived,
      'latestVersion': latestVersion,
      'nextVersion': nextVersion,
      'properties': ?properties,
      'tags': ?tags,
    };
  }

  factory DataContainerResponse.fromMap(Map<String, dynamic> map) {
    return DataContainerResponse(
      dataType: map['dataType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      isArchived: map['isArchived'] == null ? null : map['isArchived'] as bool,
      latestVersion: map['latestVersion'] as String,
      nextVersion: map['nextVersion'] as String,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

