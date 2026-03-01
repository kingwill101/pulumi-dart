// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_repo_source_context_response.dart';
import 'gerrit_source_context_response.dart';
import 'git_source_context_response.dart';

/// A SourceContext is a reference to a tree of files. A SourceContext together with a path point to a unique revision of a single file or directory.
class SourceContextResponse {
  /// A SourceContext referring to a revision in a Google Cloud Source Repo.
  final CloudRepoSourceContextResponse cloudRepo;

  /// A SourceContext referring to a Gerrit project.
  final GerritSourceContextResponse gerrit;

  /// A SourceContext referring to any third party Git repo (e.g., GitHub).
  final GitSourceContextResponse git;

  /// Labels with user defined metadata.
  final Map<String, String> labels;

  /// Creates a new [SourceContextResponse].
  /// [cloudRepo] A SourceContext referring to a revision in a Google Cloud Source Repo.
  /// [gerrit] A SourceContext referring to a Gerrit project.
  /// [git] A SourceContext referring to any third party Git repo (e.g., GitHub).
  /// [labels] Labels with user defined metadata.
  SourceContextResponse({
    required this.cloudRepo,
    required this.gerrit,
    required this.git,
    required this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRepo': cloudRepo.toMap(),
      'gerrit': gerrit.toMap(),
      'git': git.toMap(),
      'labels': labels,
    };
  }

  factory SourceContextResponse.fromMap(Map<String, dynamic> map) {
    return SourceContextResponse(
      cloudRepo: CloudRepoSourceContextResponse.fromMap(
        (map['cloudRepo'] as Map).cast<String, dynamic>(),
      ),
      gerrit: GerritSourceContextResponse.fromMap(
        (map['gerrit'] as Map).cast<String, dynamic>(),
      ),
      git: GitSourceContextResponse.fromMap(
        (map['git'] as Map).cast<String, dynamic>(),
      ),
      labels: (map['labels'] as Map).cast<String, String>(),
    );
  }
}
