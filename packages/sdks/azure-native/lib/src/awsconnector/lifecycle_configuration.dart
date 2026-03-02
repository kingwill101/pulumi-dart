// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule.dart';

/// Definition of LifecycleConfiguration
class LifecycleConfiguration {
  /// A lifecycle rule for individual objects in an Amazon S3 bucket.
  final pulumi.Input<List<Rule>>? rules;

  /// Creates a new [LifecycleConfiguration].
  /// [rules] A lifecycle rule for individual objects in an Amazon S3 bucket.
  LifecycleConfiguration({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<Rule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<Rule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LifecycleConfiguration.fromMap(Map<String, dynamic> map) {
    return LifecycleConfiguration(
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<Rule>(map['rules'], (value) => Rule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

