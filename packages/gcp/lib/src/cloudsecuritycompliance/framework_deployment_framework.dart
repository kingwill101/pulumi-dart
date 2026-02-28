// ignore_for_file: unused_element, unnecessary_cast

class FrameworkDeploymentFramework {
  /// In the format:
  /// organizations/{org}/locations/{location}/frameworks/{framework}
  final String framework;

  /// Major revision id of the framework.
  final String majorRevisionId;

  /// Creates a new [FrameworkDeploymentFramework].
  /// [framework] In the format:
  /// [majorRevisionId] Major revision id of the framework.
  FrameworkDeploymentFramework({
    required this.framework,
    required this.majorRevisionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['framework'] = framework;
    map['majorRevisionId'] = majorRevisionId;
    return map;
  }

  factory FrameworkDeploymentFramework.fromMap(Map<String, dynamic> map) {
    return FrameworkDeploymentFramework(
      framework: map['framework'] as String,
      majorRevisionId: map['majorRevisionId'] as String,
    );
  }
}
