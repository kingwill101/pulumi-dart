// ignore_for_file: unused_element, unnecessary_cast

import 'alias_context.dart';
import 'repo_id.dart';

/// A CloudRepoSourceContext denotes a particular revision in a Google Cloud Source Repo.
class CloudRepoSourceContext {
  /// An alias, which may be a branch or tag.
  final AliasContext? aliasContext;

  /// The ID of the repo.
  final RepoId? repoId;

  /// A revision ID.
  final String? revisionId;

  CloudRepoSourceContext({
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

  factory CloudRepoSourceContext.fromMap(Map<String, dynamic> map) {
    return CloudRepoSourceContext(
      aliasContext: map['aliasContext'] == null
          ? null
          : AliasContext.fromMap(
              (map['aliasContext'] as Map).cast<String, dynamic>()),
      repoId: map['repoId'] == null
          ? null
          : RepoId.fromMap((map['repoId'] as Map).cast<String, dynamic>()),
      revisionId:
          map['revisionId'] == null ? null : map['revisionId'] as String,
    );
  }
}
