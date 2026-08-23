// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_by_tenant_response.dart';
import 'subscription_policies_response.dart';

/// Subscription information.
class SubscriptionResponse {
  /// The authorization source of the request.
  final pulumi.Input<String>? authorizationSource;
  /// The subscription display name.
  final pulumi.Input<String>? displayName;
  /// The fully qualified ID for the subscription.
  final pulumi.Input<String>? id;
  /// An array containing the tenants managing the subscription.
  final pulumi.Input<List<ManagedByTenantResponse>>? managedByTenants;
  /// The subscription state. Possible values are Enabled, Warned, PastDue, Disabled, and Deleted.
  final pulumi.Input<String>? state;
  /// The subscription ID.
  final pulumi.Input<String>? subscriptionId;
  /// The subscription policies.
  final pulumi.Input<SubscriptionPoliciesResponse>? subscriptionPolicies;
  /// The tags attached to the subscription.
  final pulumi.Input<Map<String, String>>? tags;
  /// The subscription tenant ID.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [SubscriptionResponse].
  /// [authorizationSource] The authorization source of the request.
  /// [displayName] The subscription display name.
  /// [id] The fully qualified ID for the subscription.
  /// [managedByTenants] An array containing the tenants managing the subscription.
  /// [state] The subscription state. Possible values are Enabled, Warned, PastDue, Disabled, and Deleted.
  /// [subscriptionId] The subscription ID.
  /// [subscriptionPolicies] The subscription policies.
  /// [tags] The tags attached to the subscription.
  /// [tenantId] The subscription tenant ID.
  const SubscriptionResponse({
    this.authorizationSource,
    this.displayName,
    this.id,
    this.managedByTenants,
    this.state,
    this.subscriptionId,
    this.subscriptionPolicies,
    this.tags,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationSource': ?authorizationSource,
      'displayName': ?displayName,
      'id': ?id,
      'managedByTenants': ?pulumi.Input.mapOptionalInputValue<List<ManagedByTenantResponse>, List<Map<String, dynamic>>>(managedByTenants, (value) => pulumi.Input.encodeList<ManagedByTenantResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
      'subscriptionId': ?subscriptionId,
      'subscriptionPolicies': ?pulumi.Input.mapOptionalInputValue<SubscriptionPoliciesResponse, Map<String, dynamic>>(subscriptionPolicies, (value) => value.toMap()),
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory SubscriptionResponse.fromMap(Map<String, dynamic> map) {
    return SubscriptionResponse(
      authorizationSource: (() { final guardedValue = map['authorizationSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedByTenants: (() { final guardedValue = map['managedByTenants']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedByTenantResponse>(guardedValue, (value) => ManagedByTenantResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionPolicies: (() { final guardedValue = map['subscriptionPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubscriptionPoliciesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
