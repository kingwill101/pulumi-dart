// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_life_cycle_response.dart';

/// Azure retention rule
class AzureRetentionRuleResponse {
  final bool? isDefault;
  final List<SourceLifeCycleResponse> lifecycles;
  final String name;
  /// Expected value is 'AzureRetentionRule'.
  final String objectType;

  /// Creates a new [AzureRetentionRuleResponse].
  /// [isDefault] Optional.
  /// [lifecycles] Required.
  /// [name] Required.
  /// [objectType] Expected value is 'AzureRetentionRule'.
  AzureRetentionRuleResponse({
    this.isDefault,
    required this.lifecycles,
    required this.name,
    required this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isDefault': ?isDefault,
      'lifecycles': pulumi.Input.encodeList<SourceLifeCycleResponse, Map<String, dynamic>>(lifecycles, (value) => value.toMap()),
      'name': name,
      'objectType': objectType,
    };
  }

  factory AzureRetentionRuleResponse.fromMap(Map<String, dynamic> map) {
    return AzureRetentionRuleResponse(
      isDefault: map['isDefault'] == null ? null : map['isDefault'] as bool,
      lifecycles: pulumi.Input.decodeList<SourceLifeCycleResponse>(map['lifecycles'], (value) => SourceLifeCycleResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      objectType: map['objectType'] as String,
    );
  }
}

