// ignore_for_file: unused_element, unnecessary_cast

import 'alias_context_containeranalysis_v1beta1.dart';
import 'repo_id_containeranalysis_v1beta1.dart';

/// A CloudRepoSourceContext denotes a particular revision in a Google Cloud Source Repo.
class CloudRepoSourceContextContaineranalysisV1beta1 {
  /// An alias, which may be a branch or tag.
  final AliasContextContaineranalysisV1beta1? aliasContext;

  /// The ID of the repo.
  final RepoIdContaineranalysisV1beta1? repoId;

  /// A revision ID.
  final String? revisionId;

  /// Creates a new [CloudRepoSourceContextContaineranalysisV1beta1].
  /// [aliasContext] An alias, which may be a branch or tag.
  /// [repoId] The ID of the repo.
  /// [revisionId] A revision ID.
  CloudRepoSourceContextContaineranalysisV1beta1({
    this.aliasContext,
    this.repoId,
    this.revisionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aliasContextValue = aliasContext;
    if (aliasContextValue != null) {
      map['aliasContext'] = aliasContextValue.toMap();
    }
    final repoIdValue = repoId;
    if (repoIdValue != null) {
      map['repoId'] = repoIdValue.toMap();
    }
    final revisionIdValue = revisionId;
    if (revisionIdValue != null) {
      map['revisionId'] = revisionIdValue;
    }
    return map;
  }

  factory CloudRepoSourceContextContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return CloudRepoSourceContextContaineranalysisV1beta1(
      aliasContext: map['aliasContext'] == null
          ? null
          : AliasContextContaineranalysisV1beta1.fromMap(
              (map['aliasContext'] as Map).cast<String, dynamic>()),
      repoId: map['repoId'] == null
          ? null
          : RepoIdContaineranalysisV1beta1.fromMap(
              (map['repoId'] as Map).cast<String, dynamic>()),
      revisionId:
          map['revisionId'] == null ? null : map['revisionId'] as String,
    );
  }
}
