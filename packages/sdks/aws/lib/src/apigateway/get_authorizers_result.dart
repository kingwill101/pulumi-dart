// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAuthorizers.
class GetAuthorizersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// List of Authorizer identifiers.
  final List<String>? ids;
  final String? region;
  final String? restApiId;

  /// Creates a new [GetAuthorizersResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] List of Authorizer identifiers.
  /// [region] Optional.
  /// [restApiId] Optional.
  const GetAuthorizersResult({
    this.id,
    this.ids,
    this.region,
    this.restApiId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'ids': ?ids,
      'region': ?region,
      'restApiId': ?restApiId,
    };
  }

  factory GetAuthorizersResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorizersResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      restApiId: (() { final guardedValue = map['restApiId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
