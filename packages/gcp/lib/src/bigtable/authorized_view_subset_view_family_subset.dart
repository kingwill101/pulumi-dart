// ignore_for_file: unused_element, unnecessary_cast

class AuthorizedViewSubsetViewFamilySubset {
  /// Name of the column family to be included in the authorized view. The specified column family must exist in the parent table of this authorized view.
  final String familyName;

  /// A list of Base64-encoded prefixes for qualifiers of the column family to be included in the authorized view.
  /// Every qualifier starting with one of these prefixes is included in the authorized view. To provide access to all qualifiers, include the empty string as a prefix ("").
  final List<String>? qualifierPrefixes;

  /// A list of Base64-encoded individual exact column qualifiers of the column family to be included in the authorized view.
  final List<String>? qualifiers;

  /// Creates a new [AuthorizedViewSubsetViewFamilySubset].
  /// [familyName] Name of the column family to be included in the authorized view. The specified column family must exist in the parent table of this authorized view.
  /// [qualifierPrefixes] A list of Base64-encoded prefixes for qualifiers of the column family to be included in the authorized view.
  /// [qualifiers] A list of Base64-encoded individual exact column qualifiers of the column family to be included in the authorized view.
  AuthorizedViewSubsetViewFamilySubset({
    required this.familyName,
    this.qualifierPrefixes,
    this.qualifiers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['familyName'] = familyName;
    final qualifierPrefixesValue = qualifierPrefixes;
    if (qualifierPrefixesValue != null) {
      map['qualifierPrefixes'] = qualifierPrefixesValue;
    }
    final qualifiersValue = qualifiers;
    if (qualifiersValue != null) {
      map['qualifiers'] = qualifiersValue;
    }
    return map;
  }

  factory AuthorizedViewSubsetViewFamilySubset.fromMap(
      Map<String, dynamic> map) {
    return AuthorizedViewSubsetViewFamilySubset(
      familyName: map['familyName'] as String,
      qualifierPrefixes: map['qualifierPrefixes'] == null
          ? null
          : (map['qualifierPrefixes'] as List).cast<String>(),
      qualifiers: map['qualifiers'] == null
          ? null
          : (map['qualifiers'] as List).cast<String>(),
    );
  }
}
