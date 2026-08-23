// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An alert action. Only relevant for alerts.
class PrometheusRuleGroupActionResponse {
  /// The resource id of the action group to use.
  final pulumi.Input<String>? actionGroupId;
  /// The properties of an action group object.
  final pulumi.Input<Map<String, String>>? actionProperties;

  /// Creates a new [PrometheusRuleGroupActionResponse].
  /// [actionGroupId] The resource id of the action group to use.
  /// [actionProperties] The properties of an action group object.
  const PrometheusRuleGroupActionResponse({
    this.actionGroupId,
    this.actionProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroupId': ?actionGroupId,
      'actionProperties': ?actionProperties,
    };
  }

  factory PrometheusRuleGroupActionResponse.fromMap(Map<String, dynamic> map) {
    return PrometheusRuleGroupActionResponse(
      actionGroupId: (() { final guardedValue = map['actionGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      actionProperties: (() { final guardedValue = map['actionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
