// ignore_for_file: unused_element, unnecessary_cast

import 'alias_context2.dart';
import 'repo_id2.dart';

/// A CloudRepoSourceContext denotes a particular revision in a Google Cloud Source Repo.
class CloudRepoSourceContext2 {
  /// An alias, which may be a branch or tag.
  final AliasContext2? aliasContext;

  /// The ID of the repo.
  final RepoId2? repoId;

  /// A revision ID.
  final String? revisionId;

  CloudRepoSourceContext2({
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

  factory CloudRepoSourceContext2.fromMap(Map<String, dynamic> map) {
    return CloudRepoSourceContext2(
      aliasContext: map['aliasContext'] == null
          ? null
          : AliasContext2.fromMap(
              (map['aliasContext'] as Map).cast<String, dynamic>()),
      repoId: map['repoId'] == null
          ? null
          : RepoId2.fromMap((map['repoId'] as Map).cast<String, dynamic>()),
      revisionId:
          map['revisionId'] == null ? null : map['revisionId'] as String,
    );
  }
}
