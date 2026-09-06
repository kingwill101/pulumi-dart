// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the action properties.
class NamespaceDiscoveredManagementActionResponse {
  /// Stringified JSON that contains connector-specific configuration for the action.
  final pulumi.Input<String?>? actionConfiguration;
  /// The type of the action.
  final pulumi.Input<String?>? actionType;
  /// Timestamp (in UTC) indicating when the management action was added or modified.
  final pulumi.Input<String?>? lastUpdatedOn;
  /// Name of the action.
  final pulumi.Input<String> name;
  /// The target URI on which a client can invoke the specific action.
  final pulumi.Input<String> targetUri;
  /// Response timeout for the action.
  final pulumi.Input<int?>? timeoutInSeconds;
  /// The MQTT topic path on which a client will receive the request for the action.
  final pulumi.Input<String?>? topic;
  /// URI or type definition ID.
  final pulumi.Input<String?>? typeRef;

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
    pulumi.Input<String?>? actionType,
    this.lastUpdatedOn,
    required this.name,
    required this.targetUri,
    this.timeoutInSeconds,
    this.topic,
    this.typeRef,
  }) : actionType = actionType ?? pulumi.Input.fromValue('Call');

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
      actionConfiguration: (() { final guardedValue = map['actionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      actionType: (() { final guardedValue = map['actionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdatedOn: (() { final guardedValue = map['lastUpdatedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      targetUri: pulumi.Input.fromValue(map['targetUri'] as String),
      timeoutInSeconds: (() { final guardedValue = map['timeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeRef: (() { final guardedValue = map['typeRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
