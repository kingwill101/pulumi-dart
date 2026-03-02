// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The trigger based on base image dependency.
class BaseImageTrigger {
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

  /// Creates a new [BaseImageTrigger].
  /// [baseImageTriggerType] The type of the auto trigger for base image dependency updates.
  /// [name] The name of the trigger.
  /// [status] The current status of trigger.
  /// [updateTriggerEndpoint] The endpoint URL for receiving update triggers.
  /// [updateTriggerPayloadType] Type of Payload body for Base image update triggers.
  BaseImageTrigger({
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

  factory BaseImageTrigger.fromMap(Map<String, dynamic> map) {
    return BaseImageTrigger(
      baseImageTriggerType: (map['baseImageTriggerType'] as String).input(),
      name: (map['name'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      updateTriggerEndpoint: map['updateTriggerEndpoint'] == null ? null : (map['updateTriggerEndpoint'] as String).input(),
      updateTriggerPayloadType: map['updateTriggerPayloadType'] == null ? null : (map['updateTriggerPayloadType'] as String).input(),
    );
  }
}

