// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_operators.dart';

/// Tag filter information for the VM.
class TagSettingsProperties {
  /// Filter VMs by Any or All specified tags.
  final pulumi.Input<TagOperators>? filterOperator;
  /// Dictionary of tags with its list of values.
  final pulumi.Input<Map<String, List<String>>>? tags;

  /// Creates a new [TagSettingsProperties].
  /// [filterOperator] Filter VMs by Any or All specified tags.
  /// [tags] Dictionary of tags with its list of values.
  const TagSettingsProperties({
    this.filterOperator,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterOperator': ?pulumi.Input.mapOptionalInputValue<TagOperators, String>(filterOperator, (value) => value.wireValue),
      'tags': ?tags,
    };
  }

  factory TagSettingsProperties.fromMap(Map<String, dynamic> map) {
    return TagSettingsProperties(
      filterOperator: (() { final guardedValue = map['filterOperator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TagOperators.fromValue(guardedValue as String)); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, List<String>>()); })(),
    );
  }
}

