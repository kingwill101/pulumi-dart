// ignore_for_file: unused_element, unnecessary_cast

import 'alias_context_response2.dart';

/// A SourceContext referring to a Gerrit project.
class GerritSourceContextResponse2 {
  /// An alias, which may be a branch or tag.
  final AliasContextResponse2 aliasContext;

  /// The full project name within the host. Projects may be nested, so "project/subproject" is a valid project name. The "repo name" is the hostURI/project.
  final String gerritProject;

  /// The URI of a running Gerrit instance.
  final String hostUri;

  /// A revision (commit) ID.
  final String revisionId;

  GerritSourceContextResponse2({
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

  factory GerritSourceContextResponse2.fromMap(Map<String, dynamic> map) {
    return GerritSourceContextResponse2(
      aliasContext: AliasContextResponse2.fromMap(
          (map['aliasContext'] as Map).cast<String, dynamic>()),
      gerritProject: map['gerritProject'] as String,
      hostUri: map['hostUri'] as String,
      revisionId: map['revisionId'] as String,
    );
  }
}
