// ignore_for_file: unused_element, unnecessary_cast


/// Component container definition.
/// <see href="https://docs.microsoft.com/en-us/azure/machine-learning/reference-yaml-component-command" />
class ComponentContainerResponse {
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
  /// Provisioning state for the component container.
  final String provisioningState;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;

  /// Creates a new [ComponentContainerResponse].
  /// [description] The asset description text.
  /// [isArchived] Is the asset archived?
  /// [latestVersion] The latest version inside this container.
  /// [nextVersion] The next auto incremental version
  /// [properties] The asset property dictionary.
  /// [provisioningState] Provisioning state for the component container.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  ComponentContainerResponse({
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

  factory ComponentContainerResponse.fromMap(Map<String, dynamic> map) {
    return ComponentContainerResponse(
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

