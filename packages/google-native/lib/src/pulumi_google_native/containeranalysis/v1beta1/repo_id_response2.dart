// ignore_for_file: unused_element, unnecessary_cast

import 'project_repo_id_response2.dart';

/// A unique identifier for a Cloud Repo.
class RepoIdResponse2 {
  /// A combination of a project ID and a repo name.
  final ProjectRepoIdResponse2 projectRepoId;

  /// A server-assigned, globally unique identifier.
  final String uid;

  RepoIdResponse2({
    required this.projectRepoId,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['projectRepoId'] = projectRepoId.toMap();
    map['uid'] = uid;
    return map;
  }

  factory RepoIdResponse2.fromMap(Map<String, dynamic> map) {
    return RepoIdResponse2(
      projectRepoId: ProjectRepoIdResponse2.fromMap(
          (map['projectRepoId'] as Map).cast<String, dynamic>()),
      uid: map['uid'] as String,
    );
  }
}
