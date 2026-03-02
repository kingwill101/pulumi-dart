// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The definition of a canonical profile property.
class CanonicalProfileDefinitionResponseProperties {
  /// Profile name.
  final pulumi.Input<String>? profileName;
  /// Property name of profile.
  final pulumi.Input<String>? profilePropertyName;
  /// The rank.
  final pulumi.Input<int>? rank;
  /// Type of canonical property value.
  final pulumi.Input<String>? type;
  /// Value of the canonical property.
  final pulumi.Input<String>? value;

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
      profileName: map['profileName'] == null ? null : (map['profileName'] as String).input(),
      profilePropertyName: map['profilePropertyName'] == null ? null : (map['profilePropertyName'] as String).input(),
      rank: map['rank'] == null ? null : (map['rank'] as int).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

