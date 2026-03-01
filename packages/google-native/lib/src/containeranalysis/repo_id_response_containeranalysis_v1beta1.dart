// ignore_for_file: unused_element, unnecessary_cast

import 'project_repo_id_response_containeranalysis_v1beta1.dart';

/// A unique identifier for a Cloud Repo.
class RepoIdResponseContaineranalysisV1beta1 {
  /// A combination of a project ID and a repo name.
  final ProjectRepoIdResponseContaineranalysisV1beta1 projectRepoId;

  /// A server-assigned, globally unique identifier.
  final String uid;

  /// Creates a new [RepoIdResponseContaineranalysisV1beta1].
  /// [projectRepoId] A combination of a project ID and a repo name.
  /// [uid] A server-assigned, globally unique identifier.
  RepoIdResponseContaineranalysisV1beta1({
    required this.projectRepoId,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectRepoId': projectRepoId.toMap(),
      'uid': uid,
    };
  }

  factory RepoIdResponseContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return RepoIdResponseContaineranalysisV1beta1(
      projectRepoId: ProjectRepoIdResponseContaineranalysisV1beta1.fromMap(
        (map['projectRepoId'] as Map).cast<String, dynamic>(),
      ),
      uid: map['uid'] as String,
    );
  }
}
