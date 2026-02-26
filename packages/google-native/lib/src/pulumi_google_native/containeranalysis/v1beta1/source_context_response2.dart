// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_repo_source_context_response2.dart';
import 'gerrit_source_context_response2.dart';
import 'git_source_context_response2.dart';

/// A SourceContext is a reference to a tree of files. A SourceContext together with a path point to a unique revision of a single file or directory.
class SourceContextResponse2 {
  /// A SourceContext referring to a revision in a Google Cloud Source Repo.
  final CloudRepoSourceContextResponse2 cloudRepo;

  /// A SourceContext referring to a Gerrit project.
  final GerritSourceContextResponse2 gerrit;

  /// A SourceContext referring to any third party Git repo (e.g., GitHub).
  final GitSourceContextResponse2 git;

  /// Labels with user defined metadata.
  final Map<String, String> labels;

  SourceContextResponse2({
    required this.cloudRepo,
    required this.gerrit,
    required this.git,
    required this.labels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudRepo'] = cloudRepo.toMap();
    map['gerrit'] = gerrit.toMap();
    map['git'] = git.toMap();
    map['labels'] = labels;
    return map;
  }

  factory SourceContextResponse2.fromMap(Map<String, dynamic> map) {
    return SourceContextResponse2(
      cloudRepo: CloudRepoSourceContextResponse2.fromMap(
          (map['cloudRepo'] as Map).cast<String, dynamic>()),
      gerrit: GerritSourceContextResponse2.fromMap(
          (map['gerrit'] as Map).cast<String, dynamic>()),
      git: GitSourceContextResponse2.fromMap(
          (map['git'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
    );
  }
}
