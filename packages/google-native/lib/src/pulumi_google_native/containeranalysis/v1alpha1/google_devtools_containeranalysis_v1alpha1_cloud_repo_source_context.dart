// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_containeranalysis_v1alpha1_alias_context.dart';
import 'google_devtools_containeranalysis_v1alpha1_repo_id.dart';

/// A CloudRepoSourceContext denotes a particular revision in a Google Cloud Source Repo.
class GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext {
  /// An alias, which may be a branch or tag.
  final GoogleDevtoolsContaineranalysisV1alpha1AliasContext? aliasContext;

  /// The ID of the repo.
  final GoogleDevtoolsContaineranalysisV1alpha1RepoId? repoId;

  /// A revision ID.
  final String? revisionId;

  GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext({
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

  factory GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext.fromMap(
      Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext(
      aliasContext: map['aliasContext'] == null
          ? null
          : GoogleDevtoolsContaineranalysisV1alpha1AliasContext.fromMap(
              (map['aliasContext'] as Map).cast<String, dynamic>()),
      repoId: map['repoId'] == null
          ? null
          : GoogleDevtoolsContaineranalysisV1alpha1RepoId.fromMap(
              (map['repoId'] as Map).cast<String, dynamic>()),
      revisionId:
          map['revisionId'] == null ? null : map['revisionId'] as String,
    );
  }
}
