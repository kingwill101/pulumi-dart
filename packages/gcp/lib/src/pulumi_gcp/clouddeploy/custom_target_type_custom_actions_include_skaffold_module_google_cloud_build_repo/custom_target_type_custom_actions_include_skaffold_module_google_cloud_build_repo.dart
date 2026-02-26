// ignore_for_file: unused_element, unnecessary_cast

class CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudBuildRepo {
  /// Relative path from the repository root to the Skaffold file.
  final String? path;

  /// Branch or tag to use when cloning the repository.
  final String? ref;

  /// Cloud Build 2nd gen repository in the format of 'projects/<project>/locations/<location>/connections/<connection>/repositories/<repository>'.
  final String repository;

  CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudBuildRepo({
    this.path,
    this.ref,
    required this.repository,
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
    map['repository'] = repository;
    return map;
  }

  factory CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudBuildRepo.fromMap(
      Map<String, dynamic> map) {
    return CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudBuildRepo(
      path: map['path'] == null ? null : map['path'] as String,
      ref: map['ref'] == null ? null : map['ref'] as String,
      repository: map['repository'] as String,
    );
  }
}
