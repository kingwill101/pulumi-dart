// ignore_for_file: unused_element, unnecessary_cast

import 'project_repo_id_containeranalysis_v1beta1.dart';

/// A unique identifier for a Cloud Repo.
class RepoIdContaineranalysisV1beta1 {
  /// A combination of a project ID and a repo name.
  final ProjectRepoIdContaineranalysisV1beta1? projectRepoId;

  /// A server-assigned, globally unique identifier.
  final String? uid;

  RepoIdContaineranalysisV1beta1({
    this.projectRepoId,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectRepoIdValue = projectRepoId;
    if (projectRepoIdValue != null) {
      map['projectRepoId'] = projectRepoIdValue.toMap();
    }
    final uidValue = uid;
    if (uidValue != null) {
      map['uid'] = uidValue;
    }
    return map;
  }

  factory RepoIdContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return RepoIdContaineranalysisV1beta1(
      projectRepoId: map['projectRepoId'] == null
          ? null
          : ProjectRepoIdContaineranalysisV1beta1.fromMap(
              (map['projectRepoId'] as Map).cast<String, dynamic>()),
      uid: map['uid'] == null ? null : map['uid'] as String,
    );
  }
}
