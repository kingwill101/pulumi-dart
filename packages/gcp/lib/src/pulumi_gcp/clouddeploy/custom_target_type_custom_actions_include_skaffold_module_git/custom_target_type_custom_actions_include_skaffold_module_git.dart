// ignore_for_file: unused_element, unnecessary_cast

class CustomTargetTypeCustomActionsIncludeSkaffoldModuleGit {
  /// Relative path from the repository root to the Skaffold file.
  final String? path;

  /// Git ref the package should be cloned from.
  final String? ref;

  /// Git repository the package should be cloned from.
  final String repo;

  CustomTargetTypeCustomActionsIncludeSkaffoldModuleGit({
    this.path,
    this.ref,
    required this.repo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final refValue = ref;
    if (refValue != null) {
      map['ref'] = refValue;
    }
    map['repo'] = repo;
    return map;
  }

  factory CustomTargetTypeCustomActionsIncludeSkaffoldModuleGit.fromMap(
      Map<String, dynamic> map) {
    return CustomTargetTypeCustomActionsIncludeSkaffoldModuleGit(
      path: map['path'] == null ? null : map['path'] as String,
      ref: map['ref'] == null ? null : map['ref'] as String,
      repo: map['repo'] as String,
    );
  }
}
