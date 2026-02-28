// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getNetworks.
class GetNetworksResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The list of networks in the specified project.
  final List<String> networks;

  /// The project name being queried.
  final String? project;

  /// The URI of the resource.
  final String selfLink;

  /// Creates a new [GetNetworksResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [networks] The list of networks in the specified project.
  /// [project] The project name being queried.
  /// [selfLink] The URI of the resource.
  GetNetworksResult({
    required this.id,
    required this.networks,
    this.project,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['networks'] = networks;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['selfLink'] = selfLink;
    return map;
  }

  factory GetNetworksResult.fromMap(Map<String, dynamic> map) {
    return GetNetworksResult(
      id: map['id'] as String,
      networks: (map['networks'] as List).cast<String>(),
      project: map['project'] == null ? null : map['project'] as String,
      selfLink: map['selfLink'] as String,
    );
  }
}
