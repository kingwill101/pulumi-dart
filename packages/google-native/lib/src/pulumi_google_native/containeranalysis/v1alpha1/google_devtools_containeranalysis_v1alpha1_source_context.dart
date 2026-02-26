// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_containeranalysis_v1alpha1_cloud_repo_source_context.dart';
import 'google_devtools_containeranalysis_v1alpha1_gerrit_source_context.dart';
import 'google_devtools_containeranalysis_v1alpha1_git_source_context.dart';

/// A SourceContext is a reference to a tree of files. A SourceContext together with a path point to a unique revision of a single file or directory.
class GoogleDevtoolsContaineranalysisV1alpha1SourceContext {
  /// A SourceContext referring to a revision in a Google Cloud Source Repo.
  final GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext?
      cloudRepo;

  /// A SourceContext referring to a Gerrit project.
  final GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext? gerrit;

  /// A SourceContext referring to any third party Git repo (e.g., GitHub).
  final GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext? git;

  /// Labels with user defined metadata.
  final Map<String, String>? labels;

  GoogleDevtoolsContaineranalysisV1alpha1SourceContext({
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

  factory GoogleDevtoolsContaineranalysisV1alpha1SourceContext.fromMap(
      Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1SourceContext(
      cloudRepo: map['cloudRepo'] == null
          ? null
          : GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext
              .fromMap((map['cloudRepo'] as Map).cast<String, dynamic>()),
      gerrit: map['gerrit'] == null
          ? null
          : GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext.fromMap(
              (map['gerrit'] as Map).cast<String, dynamic>()),
      git: map['git'] == null
          ? null
          : GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext.fromMap(
              (map['git'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
    );
  }
}
