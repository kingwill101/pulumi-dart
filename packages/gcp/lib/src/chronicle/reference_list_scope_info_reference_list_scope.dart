// ignore_for_file: unused_element, unnecessary_cast

class ReferenceListScopeInfoReferenceListScope {
  /// Optional. The list of scope names of the reference list. The scope names should be
  /// full resource names and should be of the format:
  /// "projects/{project}/locations/{location}/instances/{instance}/dataAccessScopes/{scope_name}".
  final List<String>? scopeNames;

  /// Creates a new [ReferenceListScopeInfoReferenceListScope].
  /// [scopeNames] Optional. The list of scope names of the reference list. The scope names should be
  ReferenceListScopeInfoReferenceListScope({
    this.scopeNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final scopeNamesValue = scopeNames;
    if (scopeNamesValue != null) {
      map['scopeNames'] = scopeNamesValue;
    }
    return map;
  }

  factory ReferenceListScopeInfoReferenceListScope.fromMap(
      Map<String, dynamic> map) {
    return ReferenceListScopeInfoReferenceListScope(
      scopeNames: map['scopeNames'] == null
          ? null
          : (map['scopeNames'] as List).cast<String>(),
    );
  }
}
