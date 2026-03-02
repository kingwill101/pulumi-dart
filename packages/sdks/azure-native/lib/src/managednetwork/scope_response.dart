// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_id_response.dart';

/// Scope of a Managed Network
class ScopeResponse {
  /// The collection of management groups covered by the Managed Network
  final pulumi.Input<List<ResourceIdResponse>>? managementGroups;
  /// The collection of  subnets covered by the Managed Network
  final pulumi.Input<List<ResourceIdResponse>>? subnets;
  /// The collection of subscriptions covered by the Managed Network
  final pulumi.Input<List<ResourceIdResponse>>? subscriptions;
  /// The collection of virtual nets covered by the Managed Network
  final pulumi.Input<List<ResourceIdResponse>>? virtualNetworks;

  /// Creates a new [ScopeResponse].
  /// [managementGroups] The collection of management groups covered by the Managed Network
  /// [subnets] The collection of  subnets covered by the Managed Network
  /// [subscriptions] The collection of subscriptions covered by the Managed Network
  /// [virtualNetworks] The collection of virtual nets covered by the Managed Network
  ScopeResponse({
    this.managementGroups,
    this.subnets,
    this.subscriptions,
    this.virtualNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroups': ?pulumi.Input.mapOptionalInputValue<List<ResourceIdResponse>, List<Map<String, dynamic>>>(managementGroups, (value) => pulumi.Input.encodeList<ResourceIdResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnets': ?pulumi.Input.mapOptionalInputValue<List<ResourceIdResponse>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<ResourceIdResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subscriptions': ?pulumi.Input.mapOptionalInputValue<List<ResourceIdResponse>, List<Map<String, dynamic>>>(subscriptions, (value) => pulumi.Input.encodeList<ResourceIdResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualNetworks': ?pulumi.Input.mapOptionalInputValue<List<ResourceIdResponse>, List<Map<String, dynamic>>>(virtualNetworks, (value) => pulumi.Input.encodeList<ResourceIdResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScopeResponse.fromMap(Map<String, dynamic> map) {
    return ScopeResponse(
      managementGroups: map['managementGroups'] == null ? null : (pulumi.Input.decodeList<ResourceIdResponse>(map['managementGroups'], (value) => ResourceIdResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      subnets: map['subnets'] == null ? null : (pulumi.Input.decodeList<ResourceIdResponse>(map['subnets'], (value) => ResourceIdResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      subscriptions: map['subscriptions'] == null ? null : (pulumi.Input.decodeList<ResourceIdResponse>(map['subscriptions'], (value) => ResourceIdResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      virtualNetworks: map['virtualNetworks'] == null ? null : (pulumi.Input.decodeList<ResourceIdResponse>(map['virtualNetworks'], (value) => ResourceIdResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

