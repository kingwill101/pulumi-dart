// ignore_for_file: unused_element, unnecessary_cast


class RaiToolLabelPropertiesResponseProjectScopes {
  /// Dictionary of label key-value pairs for the project scope.
  final Map<String, String> labelValues;
  /// Project name to which this scope applies.
  final String project;

  /// Creates a new [RaiToolLabelPropertiesResponseProjectScopes].
  /// [labelValues] Dictionary of label key-value pairs for the project scope.
  /// [project] Project name to which this scope applies.
  RaiToolLabelPropertiesResponseProjectScopes({
    required this.labelValues,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelValues': labelValues,
      'project': project,
    };
  }

  factory RaiToolLabelPropertiesResponseProjectScopes.fromMap(Map<String, dynamic> map) {
    return RaiToolLabelPropertiesResponseProjectScopes(
      labelValues: (map['labelValues'] as Map).cast<String, String>(),
      project: map['project'] as String,
    );
  }
}

