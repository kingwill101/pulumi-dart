// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEnvironmentBlueprint.
class GetEnvironmentBlueprintResult {
  /// Provider of the blueprint
  final String? blueprintProvider;
  /// Description of the blueprint
  final String? description;
  final String? domainId;
  /// ID of the environment blueprint
  final String? id;
  final bool? managed;
  final String? name;
  final String? region;

  /// Creates a new [GetEnvironmentBlueprintResult].
  /// [blueprintProvider] Provider of the blueprint
  /// [description] Description of the blueprint
  /// [domainId] Optional.
  /// [id] ID of the environment blueprint
  /// [managed] Optional.
  /// [name] Optional.
  /// [region] Optional.
  const GetEnvironmentBlueprintResult({
    this.blueprintProvider,
    this.description,
    this.domainId,
    this.id,
    this.managed,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueprintProvider': ?blueprintProvider,
      'description': ?description,
      'domainId': ?domainId,
      'id': ?id,
      'managed': ?managed,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetEnvironmentBlueprintResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentBlueprintResult(
      blueprintProvider: (() { final guardedValue = map['blueprintProvider']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainId: (() { final guardedValue = map['domainId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managed: (() { final guardedValue = map['managed']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
