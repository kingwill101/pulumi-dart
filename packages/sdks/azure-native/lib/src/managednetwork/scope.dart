// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_id.dart';

/// Scope of a Managed Network
class Scope {
  /// The collection of management groups covered by the Managed Network
  final List<ResourceId>? managementGroups;
  /// The collection of  subnets covered by the Managed Network
  final List<ResourceId>? subnets;
  /// The collection of subscriptions covered by the Managed Network
  final List<ResourceId>? subscriptions;
  /// The collection of virtual nets covered by the Managed Network
  final List<ResourceId>? virtualNetworks;

  /// Creates a new [Scope].
  /// [managementGroups] The collection of management groups covered by the Managed Network
  /// [subnets] The collection of  subnets covered by the Managed Network
  /// [subscriptions] The collection of subscriptions covered by the Managed Network
  /// [virtualNetworks] The collection of virtual nets covered by the Managed Network
  Scope({
    this.managementGroups,
    this.subnets,
    this.subscriptions,
    this.virtualNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroups': ?managementGroups == null ? null : pulumi.Input.encodeList<ResourceId, Map<String, dynamic>>(managementGroups!, (value) => value.toMap()),
      'subnets': ?subnets == null ? null : pulumi.Input.encodeList<ResourceId, Map<String, dynamic>>(subnets!, (value) => value.toMap()),
      'subscriptions': ?subscriptions == null ? null : pulumi.Input.encodeList<ResourceId, Map<String, dynamic>>(subscriptions!, (value) => value.toMap()),
      'virtualNetworks': ?virtualNetworks == null ? null : pulumi.Input.encodeList<ResourceId, Map<String, dynamic>>(virtualNetworks!, (value) => value.toMap()),
    };
  }

  factory Scope.fromMap(Map<String, dynamic> map) {
    return Scope(
      managementGroups: map['managementGroups'] == null ? null : pulumi.Input.decodeList<ResourceId>(map['managementGroups'], (value) => ResourceId.fromMap((value as Map).cast<String, dynamic>())),
      subnets: map['subnets'] == null ? null : pulumi.Input.decodeList<ResourceId>(map['subnets'], (value) => ResourceId.fromMap((value as Map).cast<String, dynamic>())),
      subscriptions: map['subscriptions'] == null ? null : pulumi.Input.decodeList<ResourceId>(map['subscriptions'], (value) => ResourceId.fromMap((value as Map).cast<String, dynamic>())),
      virtualNetworks: map['virtualNetworks'] == null ? null : pulumi.Input.decodeList<ResourceId>(map['virtualNetworks'], (value) => ResourceId.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

