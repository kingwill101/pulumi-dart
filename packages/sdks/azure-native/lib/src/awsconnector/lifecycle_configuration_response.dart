// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_response.dart';

/// Definition of LifecycleConfiguration
class LifecycleConfigurationResponse {
  /// A lifecycle rule for individual objects in an Amazon S3 bucket.
  final pulumi.Input<List<RuleResponse>?>? rules;

  /// Creates a new [LifecycleConfigurationResponse].
  /// [rules] A lifecycle rule for individual objects in an Amazon S3 bucket.
  const LifecycleConfigurationResponse({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<RuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LifecycleConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return LifecycleConfigurationResponse(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleResponse>(guardedValue, (value) => RuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
