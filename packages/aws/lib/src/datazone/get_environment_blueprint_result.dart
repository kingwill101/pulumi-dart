// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getEnvironmentBlueprint.
class GetEnvironmentBlueprintResult {
  /// Provider of the blueprint
  final String blueprintProvider;

  /// Description of the blueprint
  final String description;
  final String domainId;

  /// ID of the environment blueprint
  final String id;
  final bool managed;
  final String name;
  final String region;

  /// Creates a new [GetEnvironmentBlueprintResult].
  /// [blueprintProvider] Provider of the blueprint
  /// [description] Description of the blueprint
  /// [domainId] Required.
  /// [id] ID of the environment blueprint
  /// [managed] Required.
  /// [name] Required.
  /// [region] Required.
  GetEnvironmentBlueprintResult({
    required this.blueprintProvider,
    required this.description,
    required this.domainId,
    required this.id,
    required this.managed,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['blueprintProvider'] = blueprintProvider;
    map['description'] = description;
    map['domainId'] = domainId;
    map['id'] = id;
    map['managed'] = managed;
    map['name'] = name;
    map['region'] = region;
    return map;
  }

  factory GetEnvironmentBlueprintResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentBlueprintResult(
      blueprintProvider: map['blueprintProvider'] as String,
      description: map['description'] as String,
      domainId: map['domainId'] as String,
      id: map['id'] as String,
      managed: map['managed'] as bool,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}
