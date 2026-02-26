// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_containeranalysis_v1alpha1_alias_context_response.dart';
import 'google_devtools_containeranalysis_v1alpha1_repo_id_response.dart';

/// A CloudRepoSourceContext denotes a particular revision in a Google Cloud Source Repo.
class GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContextResponse {
  /// An alias, which may be a branch or tag.
  final GoogleDevtoolsContaineranalysisV1alpha1AliasContextResponse
      aliasContext;

  /// The ID of the repo.
  final GoogleDevtoolsContaineranalysisV1alpha1RepoIdResponse repoId;

  /// A revision ID.
  final String revisionId;

  GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContextResponse({
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

  factory GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContextResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContextResponse(
      aliasContext:
          GoogleDevtoolsContaineranalysisV1alpha1AliasContextResponse.fromMap(
              (map['aliasContext'] as Map).cast<String, dynamic>()),
      repoId: GoogleDevtoolsContaineranalysisV1alpha1RepoIdResponse.fromMap(
          (map['repoId'] as Map).cast<String, dynamic>()),
      revisionId: map['revisionId'] as String,
    );
  }
}
