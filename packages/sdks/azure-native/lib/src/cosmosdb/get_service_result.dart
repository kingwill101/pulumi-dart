// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getService.
class GetServiceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The unique resource identifier of the database account.
  final String? id;
  /// The name of the database account.
  final String? name;
  /// Services response resource.
  final dynamic properties;
  /// The type of Azure resource.
  final String? type;

  /// Creates a new [GetServiceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The unique resource identifier of the database account.
  /// [name] The name of the database account.
  /// [properties] Services response resource.
  /// [type] The type of Azure resource.
  const GetServiceResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'properties': ?properties,
      'type': ?type,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return guardedValue; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
