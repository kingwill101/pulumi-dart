// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the action properties.
class NamespaceDiscoveredManagementActionResponse {
  /// Stringified JSON that contains connector-specific configuration for the action.
  final pulumi.Input<String>? actionConfiguration;
  /// The type of the action.
  final pulumi.Input<String>? actionType;
  /// Timestamp (in UTC) indicating when the management action was added or modified.
  final pulumi.Input<String>? lastUpdatedOn;
  /// Name of the action.
  final pulumi.Input<String> name;
  /// The target URI on which a client can invoke the specific action.
  final pulumi.Input<String> targetUri;
  /// Response timeout for the action.
  final pulumi.Input<int>? timeoutInSeconds;
  /// The MQTT topic path on which a client will receive the request for the action.
  final pulumi.Input<String>? topic;
  /// URI or type definition ID.
  final pulumi.Input<String>? typeRef;

  /// Creates a new [NamespaceDiscoveredManagementActionResponse].
  /// [actionConfiguration] Stringified JSON that contains connector-specific configuration for the action.
  /// [actionType] The type of the action.
  /// [lastUpdatedOn] Timestamp (in UTC) indicating when the management action was added or modified.
  /// [name] Name of the action.
  /// [targetUri] The target URI on which a client can invoke the specific action.
  /// [timeoutInSeconds] Response timeout for the action.
  /// [topic] The MQTT topic path on which a client will receive the request for the action.
  /// [typeRef] URI or type definition ID.
  NamespaceDiscoveredManagementActionResponse({
    this.actionConfiguration,
    this.actionType,
    this.lastUpdatedOn,
    required this.name,
    required this.targetUri,
    this.timeoutInSeconds,
    this.topic,
    this.typeRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionConfiguration': ?actionConfiguration,
      'actionType': ?actionType,
      'lastUpdatedOn': ?lastUpdatedOn,
      'name': name,
      'targetUri': targetUri,
      'timeoutInSeconds': ?timeoutInSeconds,
      'topic': ?topic,
      'typeRef': ?typeRef,
    };
  }

  factory NamespaceDiscoveredManagementActionResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceDiscoveredManagementActionResponse(
      actionConfiguration: map['actionConfiguration'] == null ? null : (map['actionConfiguration']! as String).input(),
      actionType: map['actionType'] == null ? null : (map['actionType']! as String).input(),
      lastUpdatedOn: map['lastUpdatedOn'] == null ? null : (map['lastUpdatedOn']! as String).input(),
      name: (map['name'] as String).input(),
      targetUri: (map['targetUri'] as String).input(),
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : (map['timeoutInSeconds']! as int).input(),
      topic: map['topic'] == null ? null : (map['topic']! as String).input(),
      typeRef: map['typeRef'] == null ? null : (map['typeRef']! as String).input(),
    );
  }
}

