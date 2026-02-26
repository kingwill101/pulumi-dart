// ignore_for_file: unused_element, unnecessary_cast

import 'project_repo_id_response.dart';

/// A unique identifier for a Cloud Repo.
class RepoIdResponse {
  /// A combination of a project ID and a repo name.
  final ProjectRepoIdResponse projectRepoId;

  /// A server-assigned, globally unique identifier.
  final String uid;

  RepoIdResponse({
    required this.projectRepoId,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['projectRepoId'] = projectRepoId.toMap();
    map['uid'] = uid;
    return map;
  }

  factory RepoIdResponse.fromMap(Map<String, dynamic> map) {
    return RepoIdResponse(
      projectRepoId: ProjectRepoIdResponse.fromMap(
          (map['projectRepoId'] as Map).cast<String, dynamic>()),
      uid: map['uid'] as String,
    );
  }
}
