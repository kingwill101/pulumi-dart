// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by listManagedClusterAccessProfile.
class ListManagedClusterAccessProfileResult {
  /// Resource Id
  final String id;

  /// Base64-encoded Kubernetes configuration file.
  final String? kubeConfig;

  /// Resource location
  final String location;

  /// Resource name
  final String name;

  /// Resource tags
  final Map<String, String>? tags;

  /// Resource type
  final String type;

  /// Creates a new [ListManagedClusterAccessProfileResult].
  /// [id] Resource Id
  /// [kubeConfig] Base64-encoded Kubernetes configuration file.
  /// [location] Resource location
  /// [name] Resource name
  /// [tags] Resource tags
  /// [type] Resource type
  ListManagedClusterAccessProfileResult({
    required this.id,
    this.kubeConfig,
    required this.location,
    required this.name,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'kubeConfig': ?kubeConfig,
      'location': location,
      'name': name,
      'tags': ?tags,
      'type': type,
    };
  }

  factory ListManagedClusterAccessProfileResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListManagedClusterAccessProfileResult(
      id: map['id'] as String,
      kubeConfig: (() {
        final guardedValue = map['kubeConfig'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      location: map['location'] as String,
      name: map['name'] as String,
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
    );
  }
}
