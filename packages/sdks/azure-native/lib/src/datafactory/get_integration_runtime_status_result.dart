// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIntegrationRuntimeStatus.
class GetIntegrationRuntimeStatusResult {
  /// The integration runtime name.
  final String? name;
  /// Integration runtime properties.
  final dynamic properties;

  /// Creates a new [GetIntegrationRuntimeStatusResult].
  /// [name] The integration runtime name.
  /// [properties] Integration runtime properties.
  const GetIntegrationRuntimeStatusResult({
    this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': ?properties,
    };
  }

  factory GetIntegrationRuntimeStatusResult.fromMap(Map<String, dynamic> map) {
    return GetIntegrationRuntimeStatusResult(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return guardedValue; })(),
    );
  }
}
