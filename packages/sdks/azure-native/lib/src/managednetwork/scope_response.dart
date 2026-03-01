// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_id_response.dart';

/// Scope of a Managed Network
class ScopeResponse {
  /// The collection of management groups covered by the Managed Network
  final List<ResourceIdResponse>? managementGroups;
  /// The collection of  subnets covered by the Managed Network
  final List<ResourceIdResponse>? subnets;
  /// The collection of subscriptions covered by the Managed Network
  final List<ResourceIdResponse>? subscriptions;
  /// The collection of virtual nets covered by the Managed Network
  final List<ResourceIdResponse>? virtualNetworks;

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
      'managementGroups': ?managementGroups == null ? null : pulumi.Input.encodeList<ResourceIdResponse, Map<String, dynamic>>(managementGroups!, (value) => value.toMap()),
      'subnets': ?subnets == null ? null : pulumi.Input.encodeList<ResourceIdResponse, Map<String, dynamic>>(subnets!, (value) => value.toMap()),
      'subscriptions': ?subscriptions == null ? null : pulumi.Input.encodeList<ResourceIdResponse, Map<String, dynamic>>(subscriptions!, (value) => value.toMap()),
      'virtualNetworks': ?virtualNetworks == null ? null : pulumi.Input.encodeList<ResourceIdResponse, Map<String, dynamic>>(virtualNetworks!, (value) => value.toMap()),
    };
  }

  factory ScopeResponse.fromMap(Map<String, dynamic> map) {
    return ScopeResponse(
      managementGroups: map['managementGroups'] == null ? null : pulumi.Input.decodeList<ResourceIdResponse>(map['managementGroups'], (value) => ResourceIdResponse.fromMap((value as Map).cast<String, dynamic>())),
      subnets: map['subnets'] == null ? null : pulumi.Input.decodeList<ResourceIdResponse>(map['subnets'], (value) => ResourceIdResponse.fromMap((value as Map).cast<String, dynamic>())),
      subscriptions: map['subscriptions'] == null ? null : pulumi.Input.decodeList<ResourceIdResponse>(map['subscriptions'], (value) => ResourceIdResponse.fromMap((value as Map).cast<String, dynamic>())),
      virtualNetworks: map['virtualNetworks'] == null ? null : pulumi.Input.decodeList<ResourceIdResponse>(map['virtualNetworks'], (value) => ResourceIdResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

