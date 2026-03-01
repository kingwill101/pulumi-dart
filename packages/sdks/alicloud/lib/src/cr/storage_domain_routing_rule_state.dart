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
  StorageDomainRoutingRuleState({
    pulumi.Output<int>? createTime,
    pulumi.Output<String>? instanceId,
    pulumi.Output<List<StorageDomainRoutingRuleRoute>>? routes,
    pulumi.Output<String>? ruleId,
  }) :
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      routes = pulumi.Input.asOptionalInput<List<StorageDomainRoutingRuleRoute>>(routes),
      ruleId = pulumi.Input.asOptionalInput<String>(ruleId);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      routes: map['routes'] == null ? null : pulumi.Output.create<List<StorageDomainRoutingRuleRoute>>(pulumi.Input.decodeList<StorageDomainRoutingRuleRoute>(map['routes'], (value) => StorageDomainRoutingRuleRoute.fromMap((value as Map).cast<String, dynamic>()))),
      ruleId: map['ruleId'] == null ? null : pulumi.Output.create<String>(map['ruleId'] as String),
    );
  }
}

