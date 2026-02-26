// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_repo_source_context2.dart';
import 'gerrit_source_context2.dart';
import 'git_source_context2.dart';

/// A SourceContext is a reference to a tree of files. A SourceContext together with a path point to a unique revision of a single file or directory.
class SourceContext2 {
  /// A SourceContext referring to a revision in a Google Cloud Source Repo.
  final CloudRepoSourceContext2? cloudRepo;

  /// A SourceContext referring to a Gerrit project.
  final GerritSourceContext2? gerrit;

  /// A SourceContext referring to any third party Git repo (e.g., GitHub).
  final GitSourceContext2? git;

  /// Labels with user defined metadata.
  final Map<String, String>? labels;

  SourceContext2({
    this.cloudRepo,
    this.gerrit,
    this.git,
    this.labels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudRepoValue = cloudRepo;
    if (cloudRepoValue != null) {
      map['cloudRepo'] = cloudRepoValue.toMap();
    }
    final gerritValue = gerrit;
    if (gerritValue != null) {
      map['gerrit'] = gerritValue.toMap();
    }
    final gitValue = git;
    if (gitValue != null) {
      map['git'] = gitValue.toMap();
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    return map;
  }

  factory SourceContext2.fromMap(Map<String, dynamic> map) {
    return SourceContext2(
      cloudRepo: map['cloudRepo'] == null
          ? null
          : CloudRepoSourceContext2.fromMap(
              (map['cloudRepo'] as Map).cast<String, dynamic>()),
      gerrit: map['gerrit'] == null
          ? null
          : GerritSourceContext2.fromMap(
              (map['gerrit'] as Map).cast<String, dynamic>()),
      git: map['git'] == null
          ? null
          : GitSourceContext2.fromMap(
              (map['git'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
    );
  }
}
