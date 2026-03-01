// ignore_for_file: unused_element, unnecessary_cast

import 'alias_context_kind_containeranalysis_v1beta1.dart';

/// An alias to a repo revision.
class AliasContextContaineranalysisV1beta1 {
  /// The alias kind.
  final AliasContextKindContaineranalysisV1beta1? kind;

  /// The alias name.
  final String? name;

  /// Creates a new [AliasContextContaineranalysisV1beta1].
  /// [kind] The alias kind.
  /// [name] The alias name.
  AliasContextContaineranalysisV1beta1({this.kind, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind == null ? null : kind!.value,
      'name': ?name,
    };
  }

  factory AliasContextContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return AliasContextContaineranalysisV1beta1(
      kind: map['kind'] == null
          ? null
          : AliasContextKindContaineranalysisV1beta1.fromValue(
              map['kind'] as String,
            ),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
