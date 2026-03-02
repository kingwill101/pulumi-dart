// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the action properties.
class ManagementAction {
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

  /// Creates a new [ManagementAction].
  /// [actionConfiguration] Stringified JSON that contains connector-specific configuration for the action.
  /// [actionType] The type of the action.
  /// [name] Name of the action.
  /// [targetUri] The target URI on which a client can invoke the specific action.
  /// [timeoutInSeconds] Response timeout for the action.
  /// [topic] The MQTT topic path on which a client will receive the request for the action.
  /// [typeRef] URI or type definition ID.
  ManagementAction({
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

  factory ManagementAction.fromMap(Map<String, dynamic> map) {
    return ManagementAction(
      actionConfiguration: map['actionConfiguration'] == null ? null : (map['actionConfiguration'] as String).input(),
      actionType: map['actionType'] == null ? null : (map['actionType'] as String).input(),
      name: (map['name'] as String).input(),
      targetUri: (map['targetUri'] as String).input(),
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : (map['timeoutInSeconds'] as int).input(),
      topic: map['topic'] == null ? null : (map['topic'] as String).input(),
      typeRef: map['typeRef'] == null ? null : (map['typeRef'] as String).input(),
    );
  }
}

