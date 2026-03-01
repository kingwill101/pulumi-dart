// ignore_for_file: unused_element, unnecessary_cast


/// Defines the action properties.
class ManagementAction {
  /// Stringified JSON that contains connector-specific configuration for the action.
  final String? actionConfiguration;
  /// The type of the action.
  final String? actionType;
  /// Name of the action.
  final String name;
  /// The target URI on which a client can invoke the specific action.
  final String targetUri;
  /// Response timeout for the action.
  final int? timeoutInSeconds;
  /// The MQTT topic path on which a client will receive the request for the action.
  final String? topic;
  /// URI or type definition ID.
  final String? typeRef;

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
      actionConfiguration: map['actionConfiguration'] == null ? null : map['actionConfiguration'] as String,
      actionType: map['actionType'] == null ? null : map['actionType'] as String,
      name: map['name'] as String,
      targetUri: map['targetUri'] as String,
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : map['timeoutInSeconds'] as int,
      topic: map['topic'] == null ? null : map['topic'] as String,
      typeRef: map['typeRef'] == null ? null : map['typeRef'] as String,
    );
  }
}

