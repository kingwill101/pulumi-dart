// ignore_for_file: unused_element, unnecessary_cast

import 'alias_context_response.dart';
import 'repo_id_response.dart';

/// A CloudRepoSourceContext denotes a particular revision in a Google Cloud Source Repo.
class CloudRepoSourceContextResponse {
  /// An alias, which may be a branch or tag.
  final AliasContextResponse aliasContext;

  /// The ID of the repo.
  final RepoIdResponse repoId;

  /// A revision ID.
  final String revisionId;

  /// Creates a new [CloudRepoSourceContextResponse].
  /// [aliasContext] An alias, which may be a branch or tag.
  /// [repoId] The ID of the repo.
  /// [revisionId] A revision ID.
  CloudRepoSourceContextResponse({
    required this.aliasContext,
    required this.repoId,
    required this.revisionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasContext': aliasContext.toMap(),
      'repoId': repoId.toMap(),
      'revisionId': revisionId,
    };
  }

  factory CloudRepoSourceContextResponse.fromMap(Map<String, dynamic> map) {
    return CloudRepoSourceContextResponse(
      aliasContext: AliasContextResponse.fromMap(
        (map['aliasContext'] as Map).cast<String, dynamic>(),
      ),
      repoId: RepoIdResponse.fromMap(
        (map['repoId'] as Map).cast<String, dynamic>(),
      ),
      revisionId: map['revisionId'] as String,
    );
  }
}
