// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_domain_routing_rule_route.dart';

/// {@template pulumi_cr_storage_domain_routing_rule_storage_domain_routing_rule_args_doc}
/// The set of arguments for StorageDomainRoutingRule.
/// {@endtemplate}
/// {@macro pulumi_cr_storage_domain_routing_rule_storage_domain_routing_rule_args_doc}
class StorageDomainRoutingRuleArgs {
  /// The ID of the Container Registry Instance.
  final pulumi.Input<String> instanceId;
  /// Domain name routing entry See `routes` below.
  final pulumi.Input<List<StorageDomainRoutingRuleRoute>> routes;

  /// Creates a new [StorageDomainRoutingRuleArgs].
  /// [instanceId] The ID of the Container Registry Instance.
  /// [routes] Domain name routing entry See `routes` below.
  StorageDomainRoutingRuleArgs({
    required this.instanceId,
    required this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'routes': pulumi.Input.mapInputValue<List<StorageDomainRoutingRuleRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<StorageDomainRoutingRuleRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StorageDomainRoutingRuleArgs.fromMap(Map<String, dynamic> map) {
    return StorageDomainRoutingRuleArgs(
      instanceId: (map['instanceId'] as String).input(),
      routes: (pulumi.Input.decodeList<StorageDomainRoutingRuleRoute>(map['routes'], (value) => StorageDomainRoutingRuleRoute.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

