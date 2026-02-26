// ignore_for_file: unused_element, unnecessary_cast

import 'alias_context_response2.dart';
import 'repo_id_response2.dart';

/// A CloudRepoSourceContext denotes a particular revision in a Google Cloud Source Repo.
class CloudRepoSourceContextResponse2 {
  /// An alias, which may be a branch or tag.
  final AliasContextResponse2 aliasContext;

  /// The ID of the repo.
  final RepoIdResponse2 repoId;

  /// A revision ID.
  final String revisionId;

  CloudRepoSourceContextResponse2({
    required this.aliasContext,
    required this.repoId,
    required this.revisionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aliasContext'] = aliasContext.toMap();
    map['repoId'] = repoId.toMap();
    map['revisionId'] = revisionId;
    return map;
  }

  factory CloudRepoSourceContextResponse2.fromMap(Map<String, dynamic> map) {
    return CloudRepoSourceContextResponse2(
      aliasContext: AliasContextResponse2.fromMap(
          (map['aliasContext'] as Map).cast<String, dynamic>()),
      repoId: RepoIdResponse2.fromMap(
          (map['repoId'] as Map).cast<String, dynamic>()),
      revisionId: map['revisionId'] as String,
    );
  }
}
