// ignore_for_file: unused_element, unnecessary_cast

class ServiceSourceConfigurationCodeRepositorySourceCodeVersion {
  /// Type of version identifier. For a git-based repository, branches represent versions. Valid values: `BRANCH`.
  final String type;

  /// Source code version. For a git-based repository, a branch name maps to a specific version. App Runner uses the most recent commit to the branch.
  final String value;

  /// Creates a new [ServiceSourceConfigurationCodeRepositorySourceCodeVersion].
  /// [type] Type of version identifier. For a git-based repository, branches represent versions. Valid values: `BRANCH`.
  /// [value] Source code version. For a git-based repository, a branch name maps to a specific version. App Runner uses the most recent commit to the branch.
  ServiceSourceConfigurationCodeRepositorySourceCodeVersion({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['value'] = value;
    return map;
  }

  factory ServiceSourceConfigurationCodeRepositorySourceCodeVersion.fromMap(
      Map<String, dynamic> map) {
    return ServiceSourceConfigurationCodeRepositorySourceCodeVersion(
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}
