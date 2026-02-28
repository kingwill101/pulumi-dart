// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_containeranalysis_v1alpha1_project_repo_id.dart';

/// A unique identifier for a Cloud Repo.
class GoogleDevtoolsContaineranalysisV1alpha1RepoId {
  /// A combination of a project ID and a repo name.
  final GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId? projectRepoId;
  /// A server-assigned, globally unique identifier.
  final String? uid;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1RepoId].
  /// [projectRepoId] A combination of a project ID and a repo name.
  /// [uid] A server-assigned, globally unique identifier.
  GoogleDevtoolsContaineranalysisV1alpha1RepoId({
    this.projectRepoId,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectRepoId': ?projectRepoId == null ? null : projectRepoId!.toMap(),
      'uid': ?uid,
    };
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1RepoId.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1RepoId(
      projectRepoId: map['projectRepoId'] == null ? null : GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId.fromMap((map['projectRepoId'] as Map).cast<String, dynamic>()),
      uid: map['uid'] == null ? null : map['uid'] as String,
    );
  }
}

