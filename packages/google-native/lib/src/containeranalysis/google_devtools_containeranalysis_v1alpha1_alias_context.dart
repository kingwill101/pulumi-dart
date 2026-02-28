// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_containeranalysis_v1alpha1_alias_context_kind.dart';

/// An alias to a repo revision.
class GoogleDevtoolsContaineranalysisV1alpha1AliasContext {
  /// The alias kind.
  final GoogleDevtoolsContaineranalysisV1alpha1AliasContextKind? kind;
  /// The alias name.
  final String? name;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1AliasContext].
  /// [kind] The alias kind.
  /// [name] The alias name.
  GoogleDevtoolsContaineranalysisV1alpha1AliasContext({
    this.kind,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind == null ? null : kind!.value,
      'name': ?name,
    };
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1AliasContext.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1AliasContext(
      kind: map['kind'] == null ? null : GoogleDevtoolsContaineranalysisV1alpha1AliasContextKind.fromValue(map['kind'] as String),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

