// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_domain_routing_rule_route.dart';

/// Input properties used for looking up and filtering StorageDomainRoutingRule resources.
class StorageDomainRoutingRuleState {
  /// The creation time of the resource.
  final pulumi.Input<int>? createTime;
  /// The ID of the Container Registry Instance.
  final pulumi.Input<String>? instanceId;
  /// Domain name routing entry See `routes` below.
  final pulumi.Input<List<StorageDomainRoutingRuleRoute>>? routes;
  /// The ID of the Rule.
  final pulumi.Input<String>? ruleId;

  /// Creates a new [StorageDomainRoutingRuleState].
  /// [createTime] The creation time of the resource.
  /// [instanceId] The ID of the Container Registry Instance.
  /// [routes] Domain name routing entry See `routes` below.
  /// [ruleId] The ID of the Rule.
  const StorageDomainRoutingRuleState({
    this.createTime,
    this.instanceId,
    this.routes,
    this.ruleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'instanceId': ?instanceId,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<StorageDomainRoutingRuleRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<StorageDomainRoutingRuleRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleId': ?ruleId,
    };
  }

  factory StorageDomainRoutingRuleState.fromMap(Map<String, dynamic> map) {
    return StorageDomainRoutingRuleState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StorageDomainRoutingRuleRoute>(guardedValue, (value) => StorageDomainRoutingRuleRoute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

