// ignore_for_file: unused_element, unnecessary_cast

import 'tag_operators.dart';

/// Tag filter information for the VM.
class TagSettingsProperties {
  /// Filter VMs by Any or All specified tags.
  final TagOperators? filterOperator;
  /// Dictionary of tags with its list of values.
  final Map<String, List<String>>? tags;

  /// Creates a new [TagSettingsProperties].
  /// [filterOperator] Filter VMs by Any or All specified tags.
  /// [tags] Dictionary of tags with its list of values.
  TagSettingsProperties({
    this.filterOperator,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterOperator': ?filterOperator == null ? null : filterOperator!.value,
      'tags': ?tags,
    };
  }

  factory TagSettingsProperties.fromMap(Map<String, dynamic> map) {
    return TagSettingsProperties(
      filterOperator: map['filterOperator'] == null ? null : TagOperators.fromValue(map['filterOperator'] as String),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, List<String>>(),
    );
  }
}

