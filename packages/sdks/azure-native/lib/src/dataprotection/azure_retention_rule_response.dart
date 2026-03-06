// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_life_cycle_response.dart';

/// Azure retention rule
class AzureRetentionRuleResponse {
  final pulumi.Input<bool>? isDefault;
  final pulumi.Input<List<SourceLifeCycleResponse>> lifecycles;
  final pulumi.Input<String> name;
  /// Expected value is 'AzureRetentionRule'.
  final pulumi.Input<String> objectType;

  /// Creates a new [AzureRetentionRuleResponse].
  /// [isDefault] Optional.
  /// [lifecycles] Required.
  /// [name] Required.
  /// [objectType] Expected value is 'AzureRetentionRule'.
  const AzureRetentionRuleResponse({
    this.isDefault,
    required this.lifecycles,
    required this.name,
    required this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isDefault': ?isDefault,
      'lifecycles': pulumi.Input.mapInputValue<List<SourceLifeCycleResponse>, List<Map<String, dynamic>>>(lifecycles, (value) => pulumi.Input.encodeList<SourceLifeCycleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'objectType': objectType,
    };
  }

  factory AzureRetentionRuleResponse.fromMap(Map<String, dynamic> map) {
    return AzureRetentionRuleResponse(
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lifecycles: pulumi.Input.fromValue(pulumi.Input.decodeList<SourceLifeCycleResponse>(map['lifecycles']!, (value) => SourceLifeCycleResponse.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
    );
  }
}

