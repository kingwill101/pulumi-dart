// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSite.
class GetSiteResult {
  /// AWS Account identifier.
  final String? accountId;
  /// Description.
  final String? description;
  final String? id;
  final String? name;
  final String? region;

  /// Creates a new [GetSiteResult].
  /// [accountId] AWS Account identifier.
  /// [description] Description.
  /// [id] Optional.
  /// [name] Optional.
  /// [region] Optional.
  const GetSiteResult({
    this.accountId,
    this.description,
    this.id,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetSiteResult.fromMap(Map<String, dynamic> map) {
    return GetSiteResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
