// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The trigger based on base image dependency.
class BaseImageTriggerResponse {
  /// The type of the auto trigger for base image dependency updates.
  final pulumi.Input<String> baseImageTriggerType;

  /// The name of the trigger.
  final pulumi.Input<String> name;

  /// The current status of trigger.
  final pulumi.Input<String>? status;

  /// The endpoint URL for receiving update triggers.
  final pulumi.Input<String>? updateTriggerEndpoint;

  /// Type of Payload body for Base image update triggers.
  final pulumi.Input<String>? updateTriggerPayloadType;

  /// Creates a new [BaseImageTriggerResponse].
  /// [baseImageTriggerType] The type of the auto trigger for base image dependency updates.
  /// [name] The name of the trigger.
  /// [status] The current status of trigger.
  /// [updateTriggerEndpoint] The endpoint URL for receiving update triggers.
  /// [updateTriggerPayloadType] Type of Payload body for Base image update triggers.
  BaseImageTriggerResponse({
    required this.baseImageTriggerType,
    required this.name,
    this.status,
    this.updateTriggerEndpoint,
    this.updateTriggerPayloadType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseImageTriggerType': baseImageTriggerType,
      'name': name,
      'status': ?status,
      'updateTriggerEndpoint': ?updateTriggerEndpoint,
      'updateTriggerPayloadType': ?updateTriggerPayloadType,
    };
  }

  factory BaseImageTriggerResponse.fromMap(Map<String, dynamic> map) {
    return BaseImageTriggerResponse(
      baseImageTriggerType: pulumi.Input.fromValue(
        map['baseImageTriggerType'] as String,
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTriggerEndpoint: (() {
        final guardedValue = map['updateTriggerEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTriggerPayloadType: (() {
        final guardedValue = map['updateTriggerPayloadType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
