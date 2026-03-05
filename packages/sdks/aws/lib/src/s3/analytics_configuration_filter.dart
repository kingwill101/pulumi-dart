// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalyticsConfigurationFilter {
  /// Object prefix for filtering.
  final pulumi.Input<String>? prefix;
  /// Set of object tags for filtering.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AnalyticsConfigurationFilter].
  /// [prefix] Object prefix for filtering.
  /// [tags] Set of object tags for filtering.
  AnalyticsConfigurationFilter({
    this.prefix,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': ?prefix,
      'tags': ?tags,
    };
  }

  factory AnalyticsConfigurationFilter.fromMap(Map<String, dynamic> map) {
    return AnalyticsConfigurationFilter(
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

