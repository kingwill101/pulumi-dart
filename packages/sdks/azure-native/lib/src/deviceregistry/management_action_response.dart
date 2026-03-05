// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the action properties.
class ManagementActionResponse {
  /// Stringified JSON that contains connector-specific configuration for the action.
  final pulumi.Input<String>? actionConfiguration;
  /// The type of the action.
  final pulumi.Input<String>? actionType;
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

  /// Creates a new [ManagementActionResponse].
  /// [actionConfiguration] Stringified JSON that contains connector-specific configuration for the action.
  /// [actionType] The type of the action.
  /// [name] Name of the action.
  /// [targetUri] The target URI on which a client can invoke the specific action.
  /// [timeoutInSeconds] Response timeout for the action.
  /// [topic] The MQTT topic path on which a client will receive the request for the action.
  /// [typeRef] URI or type definition ID.
  ManagementActionResponse({
    this.actionConfiguration,
    this.actionType,
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
      'name': name,
      'targetUri': targetUri,
      'timeoutInSeconds': ?timeoutInSeconds,
      'topic': ?topic,
      'typeRef': ?typeRef,
    };
  }

  factory ManagementActionResponse.fromMap(Map<String, dynamic> map) {
    return ManagementActionResponse(
      actionConfiguration: (() { final guardedValue = map['actionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      actionType: (() { final guardedValue = map['actionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      targetUri: pulumi.Input.fromValue(map['targetUri'] as String),
      timeoutInSeconds: (() { final guardedValue = map['timeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeRef: (() { final guardedValue = map['typeRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

