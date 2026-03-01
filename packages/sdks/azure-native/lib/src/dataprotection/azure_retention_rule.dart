// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_life_cycle.dart';

/// Azure retention rule
class AzureRetentionRule {
  final bool? isDefault;
  final List<SourceLifeCycle> lifecycles;
  final String name;
  /// Expected value is 'AzureRetentionRule'.
  final String objectType;

  /// Creates a new [AzureRetentionRule].
  /// [isDefault] Optional.
  /// [lifecycles] Required.
  /// [name] Required.
  /// [objectType] Expected value is 'AzureRetentionRule'.
  AzureRetentionRule({
    this.isDefault,
    required this.lifecycles,
    required this.name,
    required this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isDefault': ?isDefault,
      'lifecycles': pulumi.Input.encodeList<SourceLifeCycle, Map<String, dynamic>>(lifecycles, (value) => value.toMap()),
      'name': name,
      'objectType': objectType,
    };
  }

  factory AzureRetentionRule.fromMap(Map<String, dynamic> map) {
    return AzureRetentionRule(
      isDefault: map['isDefault'] == null ? null : map['isDefault'] as bool,
      lifecycles: pulumi.Input.decodeList<SourceLifeCycle>(map['lifecycles'], (value) => SourceLifeCycle.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      objectType: map['objectType'] as String,
    );
  }
}

