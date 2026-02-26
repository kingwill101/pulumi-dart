// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_containeranalysis_v1alpha1_project_repo_id_response.dart';

/// A unique identifier for a Cloud Repo.
class GoogleDevtoolsContaineranalysisV1alpha1RepoIdResponse {
  /// A combination of a project ID and a repo name.
  final GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoIdResponse
      projectRepoId;

  /// A server-assigned, globally unique identifier.
  final String uid;

  GoogleDevtoolsContaineranalysisV1alpha1RepoIdResponse({
    required this.projectRepoId,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['projectRepoId'] = projectRepoId.toMap();
    map['uid'] = uid;
    return map;
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1RepoIdResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1RepoIdResponse(
      projectRepoId:
          GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoIdResponse.fromMap(
              (map['projectRepoId'] as Map).cast<String, dynamic>()),
      uid: map['uid'] as String,
    );
  }
}
