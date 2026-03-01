// ignore_for_file: unused_element, unnecessary_cast


/// The trigger based on base image dependency.
class BaseImageTriggerResponse {
  /// The type of the auto trigger for base image dependency updates.
  final String baseImageTriggerType;
  /// The name of the trigger.
  final String name;
  /// The current status of trigger.
  final String? status;
  /// The endpoint URL for receiving update triggers.
  final String? updateTriggerEndpoint;
  /// Type of Payload body for Base image update triggers.
  final String? updateTriggerPayloadType;

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
      baseImageTriggerType: map['baseImageTriggerType'] as String,
      name: map['name'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      updateTriggerEndpoint: map['updateTriggerEndpoint'] == null ? null : map['updateTriggerEndpoint'] as String,
      updateTriggerPayloadType: map['updateTriggerPayloadType'] == null ? null : map['updateTriggerPayloadType'] as String,
    );
  }
}

