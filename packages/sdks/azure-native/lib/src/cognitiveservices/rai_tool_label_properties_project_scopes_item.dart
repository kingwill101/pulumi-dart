// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RaiToolLabelPropertiesProjectScopesItem {
  /// Dictionary of label key-value pairs for the project scope.
  final pulumi.Input<Map<String, String>> labelValues;
  /// Project name to which this scope applies.
  final pulumi.Input<String> project;

  /// Creates a new [RaiToolLabelPropertiesProjectScopesItem].
  /// [labelValues] Dictionary of label key-value pairs for the project scope.
  /// [project] Project name to which this scope applies.
  const RaiToolLabelPropertiesProjectScopesItem({
    required this.labelValues,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelValues': labelValues,
      'project': project,
    };
  }

  factory RaiToolLabelPropertiesProjectScopesItem.fromMap(Map<String, dynamic> map) {
    return RaiToolLabelPropertiesProjectScopesItem(
      labelValues: pulumi.Input.fromValue((map['labelValues'] as Map).cast<String, String>()),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}
