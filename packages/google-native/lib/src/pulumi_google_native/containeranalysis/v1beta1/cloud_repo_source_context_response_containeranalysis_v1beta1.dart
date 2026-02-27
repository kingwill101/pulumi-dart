// ignore_for_file: unused_element, unnecessary_cast

import 'alias_context_response_containeranalysis_v1beta1.dart';
import 'repo_id_response_containeranalysis_v1beta1.dart';

/// A CloudRepoSourceContext denotes a particular revision in a Google Cloud Source Repo.
class CloudRepoSourceContextResponseContaineranalysisV1beta1 {
  /// An alias, which may be a branch or tag.
  final AliasContextResponseContaineranalysisV1beta1 aliasContext;

  /// The ID of the repo.
  final RepoIdResponseContaineranalysisV1beta1 repoId;

  /// A revision ID.
  final String revisionId;

  CloudRepoSourceContextResponseContaineranalysisV1beta1({
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

  factory CloudRepoSourceContextResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return CloudRepoSourceContextResponseContaineranalysisV1beta1(
      aliasContext: AliasContextResponseContaineranalysisV1beta1.fromMap(
          (map['aliasContext'] as Map).cast<String, dynamic>()),
      repoId: RepoIdResponseContaineranalysisV1beta1.fromMap(
          (map['repoId'] as Map).cast<String, dynamic>()),
      revisionId: map['revisionId'] as String,
    );
  }
}
