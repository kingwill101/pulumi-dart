// ignore_for_file: unused_element, unnecessary_cast

import 'alias_context_kind2.dart';

/// An alias to a repo revision.
class AliasContext2 {
  /// The alias kind.
  final AliasContextKind2? kind;

  /// The alias name.
  final String? name;

  AliasContext2({
    this.kind,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue.value;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory AliasContext2.fromMap(Map<String, dynamic> map) {
    return AliasContext2(
      kind: map['kind'] == null
          ? null
          : AliasContextKind2.fromValue(map['kind'] as String),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
