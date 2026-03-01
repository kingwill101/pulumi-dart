// ignore_for_file: unused_element, unnecessary_cast


class RaiToolLabelPropertiesProjectScopes {
  /// Dictionary of label key-value pairs for the project scope.
  final Map<String, String> labelValues;
  /// Project name to which this scope applies.
  final String project;

  /// Creates a new [RaiToolLabelPropertiesProjectScopes].
  /// [labelValues] Dictionary of label key-value pairs for the project scope.
  /// [project] Project name to which this scope applies.
  RaiToolLabelPropertiesProjectScopes({
    required this.labelValues,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelValues': labelValues,
      'project': project,
    };
  }

  factory RaiToolLabelPropertiesProjectScopes.fromMap(Map<String, dynamic> map) {
    return RaiToolLabelPropertiesProjectScopes(
      labelValues: (map['labelValues'] as Map).cast<String, String>(),
      project: map['project'] as String,
    );
  }
}

