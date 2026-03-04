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
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nameSpace: (() {
        final guardedValue = map['nameSpace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyName: (() {
        final guardedValue = map['policyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subscriptionId: (() {
        final guardedValue = map['subscriptionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
