// ignore_for_file: unused_element, unnecessary_cast


/// EventHub configurations
class EventHubResponse {
  /// Resource ID of EventHub
  final String? id;
  /// EventHub name
  final String? name;
  /// EventHub namespace
  final String? nameSpace;
  /// EventHub policy name
  final String? policyName;
  /// Subscription Id
  final String? subscriptionId;

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
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nameSpace: map['nameSpace'] == null ? null : map['nameSpace'] as String,
      policyName: map['policyName'] == null ? null : map['policyName'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
    );
  }
}

