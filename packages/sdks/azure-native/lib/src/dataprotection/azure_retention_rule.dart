// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_life_cycle.dart';

/// Azure retention rule
class AzureRetentionRule {
  final pulumi.Input<bool>? isDefault;
  final pulumi.Input<List<SourceLifeCycle>> lifecycles;
  final pulumi.Input<String> name;

  /// Expected value is 'AzureRetentionRule'.
  final pulumi.Input<String> objectType;

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
      'lifecycles':
          pulumi.Input.mapInputValue<
            List<SourceLifeCycle>,
            List<Map<String, dynamic>>
          >(
            lifecycles,
            (value) =>
                pulumi.Input.encodeList<SourceLifeCycle, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'name': name,
      'objectType': objectType,
    };
  }

  factory AzureRetentionRule.fromMap(Map<String, dynamic> map) {
    return AzureRetentionRule(
      isDefault: (() {
        final guardedValue = map['isDefault'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      lifecycles: pulumi.Input.fromValue(
        pulumi.Input.decodeList<SourceLifeCycle>(
          map['lifecycles']!,
          (value) =>
              SourceLifeCycle.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
    );
  }
}
