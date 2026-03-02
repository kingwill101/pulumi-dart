// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// EventHub configurations
class EventHubResponse {
  /// Resource ID of EventHub
  final pulumi.Input<String>? id;
  /// EventHub name
  final pulumi.Input<String>? name;
  /// EventHub namespace
  final pulumi.Input<String>? nameSpace;
  /// EventHub policy name
  final pulumi.Input<String>? policyName;
  /// Subscription Id
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [EventHubResponse].
  /// [id] Resource ID of EventHub
  /// [name] EventHub name
  /// [nameSpace] EventHub namespace
  /// [policyName] EventHub policy name
  /// [subscriptionId] Subscription Id
  EventHubResponse({
    this.id,
    this.name,
    this.nameSpace,
    this.policyName,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'nameSpace': ?nameSpace,
      'policyName': ?policyName,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory EventHubResponse.fromMap(Map<String, dynamic> map) {
    return EventHubResponse(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nameSpace: map['nameSpace'] == null ? null : (map['nameSpace']! as String).input(),
      policyName: map['policyName'] == null ? null : (map['policyName']! as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
    );
  }
}

