// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_containeranalysis_v1alpha1_alias_context_response.dart';

/// A SourceContext referring to a Gerrit project.
class GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContextResponse {
  /// An alias, which may be a branch or tag.
  final GoogleDevtoolsContaineranalysisV1alpha1AliasContextResponse
      aliasContext;

  /// The full project name within the host. Projects may be nested, so "project/subproject" is a valid project name. The "repo name" is the hostURI/project.
  final String gerritProject;

  /// The URI of a running Gerrit instance.
  final String hostUri;

  /// A revision (commit) ID.
  final String revisionId;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContextResponse].
  /// [aliasContext] An alias, which may be a branch or tag.
  /// [gerritProject] The full project name within the host. Projects may be nested, so "project/subproject" is a valid project name. The "repo name" is the hostURI/project.
  /// [hostUri] The URI of a running Gerrit instance.
  /// [revisionId] A revision (commit) ID.
  GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContextResponse({
    required this.aliasContext,
    required this.gerritProject,
    required this.hostUri,
    required this.revisionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aliasContext'] = aliasContext.toMap();
    map['gerritProject'] = gerritProject;
    map['hostUri'] = hostUri;
    map['revisionId'] = revisionId;
    return map;
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContextResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContextResponse(
      aliasContext:
          GoogleDevtoolsContaineranalysisV1alpha1AliasContextResponse.fromMap(
              (map['aliasContext'] as Map).cast<String, dynamic>()),
      gerritProject: map['gerritProject'] as String,
      hostUri: map['hostUri'] as String,
      revisionId: map['revisionId'] as String,
    );
  }
}
