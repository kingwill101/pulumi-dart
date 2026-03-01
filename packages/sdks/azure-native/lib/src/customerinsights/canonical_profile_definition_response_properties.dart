// ignore_for_file: unused_element, unnecessary_cast


/// The definition of a canonical profile property.
class CanonicalProfileDefinitionResponseProperties {
  /// Profile name.
  final String? profileName;
  /// Property name of profile.
  final String? profilePropertyName;
  /// The rank.
  final int? rank;
  /// Type of canonical property value.
  final String? type;
  /// Value of the canonical property.
  final String? value;

  /// Creates a new [CanonicalProfileDefinitionResponseProperties].
  /// [profileName] Profile name.
  /// [profilePropertyName] Property name of profile.
  /// [rank] The rank.
  /// [type] Type of canonical property value.
  /// [value] Value of the canonical property.
  CanonicalProfileDefinitionResponseProperties({
    this.profileName,
    this.profilePropertyName,
    this.rank,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileName': ?profileName,
      'profilePropertyName': ?profilePropertyName,
      'rank': ?rank,
      'type': ?type,
      'value': ?value,
    };
  }

  factory CanonicalProfileDefinitionResponseProperties.fromMap(Map<String, dynamic> map) {
    return CanonicalProfileDefinitionResponseProperties(
      profileName: map['profileName'] == null ? null : map['profileName'] as String,
      profilePropertyName: map['profilePropertyName'] == null ? null : map['profilePropertyName'] as String,
      rank: map['rank'] == null ? null : map['rank'] as int,
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

