// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_response.dart';

/// Definition of LifecycleConfiguration
class LifecycleConfigurationResponse {
  /// A lifecycle rule for individual objects in an Amazon S3 bucket.
  final List<RuleResponse>? rules;

  /// Creates a new [LifecycleConfigurationResponse].
  /// [rules] A lifecycle rule for individual objects in an Amazon S3 bucket.
  LifecycleConfigurationResponse({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?rules == null ? null : pulumi.Input.encodeList<RuleResponse, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory LifecycleConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return LifecycleConfigurationResponse(
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<RuleResponse>(map['rules'], (value) => RuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

