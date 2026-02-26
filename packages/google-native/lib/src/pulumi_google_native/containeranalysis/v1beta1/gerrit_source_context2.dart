// ignore_for_file: unused_element, unnecessary_cast

import 'alias_context2.dart';

/// A SourceContext referring to a Gerrit project.
class GerritSourceContext2 {
  /// An alias, which may be a branch or tag.
  final AliasContext2? aliasContext;

  /// The full project name within the host. Projects may be nested, so "project/subproject" is a valid project name. The "repo name" is the hostURI/project.
  final String? gerritProject;

  /// The URI of a running Gerrit instance.
  final String? hostUri;

  /// A revision (commit) ID.
  final String? revisionId;

  GerritSourceContext2({
    this.aliasContext,
    this.gerritProject,
    this.hostUri,
    this.revisionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aliasContextValue = aliasContext;
    if (aliasContextValue != null) {
      map['aliasContext'] = aliasContextValue.toMap();
    }
    final gerritProjectValue = gerritProject;
    if (gerritProjectValue != null) {
      map['gerritProject'] = gerritProjectValue;
    }
    final hostUriValue = hostUri;
    if (hostUriValue != null) {
      map['hostUri'] = hostUriValue;
    }
    final revisionIdValue = revisionId;
    if (revisionIdValue != null) {
      map['revisionId'] = revisionIdValue;
    }
    return map;
  }

  factory GerritSourceContext2.fromMap(Map<String, dynamic> map) {
    return GerritSourceContext2(
      aliasContext: map['aliasContext'] == null
          ? null
          : AliasContext2.fromMap(
              (map['aliasContext'] as Map).cast<String, dynamic>()),
      gerritProject:
          map['gerritProject'] == null ? null : map['gerritProject'] as String,
      hostUri: map['hostUri'] == null ? null : map['hostUri'] as String,
      revisionId:
          map['revisionId'] == null ? null : map['revisionId'] as String,
    );
  }
}
