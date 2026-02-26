// ignore_for_file: unused_element, unnecessary_cast

class CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudStorage {
  /// Relative path from the source to the Skaffold file.
  final String? path;

  /// Cloud Storage source paths to copy recursively. For example, providing `gs://my-bucket/dir/configs/*` will result in Skaffold copying all files within the `dir/configs` directory in the bucket `my-bucket`.
  final String source;

  CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudStorage({
    this.path,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    map['source'] = source;
    return map;
  }

  factory CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudStorage.fromMap(
      Map<String, dynamic> map) {
    return CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudStorage(
      path: map['path'] == null ? null : map['path'] as String,
      source: map['source'] as String,
    );
  }
}
