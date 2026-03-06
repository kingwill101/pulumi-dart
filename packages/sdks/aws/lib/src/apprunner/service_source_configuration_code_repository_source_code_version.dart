// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceSourceConfigurationCodeRepositorySourceCodeVersion {
  /// Type of version identifier. For a git-based repository, branches represent versions. Valid values: `BRANCH`.
  final pulumi.Input<String> type;
  /// Source code version. For a git-based repository, a branch name maps to a specific version. App Runner uses the most recent commit to the branch.
  final pulumi.Input<String> value;

  /// Creates a new [ServiceSourceConfigurationCodeRepositorySourceCodeVersion].
  /// [type] Type of version identifier. For a git-based repository, branches represent versions. Valid values: `BRANCH`.
  /// [value] Source code version. For a git-based repository, a branch name maps to a specific version. App Runner uses the most recent commit to the branch.
  const ServiceSourceConfigurationCodeRepositorySourceCodeVersion({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory ServiceSourceConfigurationCodeRepositorySourceCodeVersion.fromMap(Map<String, dynamic> map) {
    return ServiceSourceConfigurationCodeRepositorySourceCodeVersion(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

