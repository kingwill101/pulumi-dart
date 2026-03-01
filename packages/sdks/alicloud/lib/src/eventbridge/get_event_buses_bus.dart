// ignore_for_file: unused_element, unnecessary_cast


class GetEventBusesBus {
  /// The time of this bus was created.
  final String createTime;
  /// The description of event bus.
  final String description;
  /// The name of event bus.
  final String eventBusName;
  /// The ID of the Event Bus. Its value is same as Queue Name.
  final String id;

  /// Creates a new [GetEventBusesBus].
  /// [createTime] The time of this bus was created.
  /// [description] The description of event bus.
  /// [eventBusName] The name of event bus.
  /// [id] The ID of the Event Bus. Its value is same as Queue Name.
  GetEventBusesBus({
    required this.createTime,
    required this.description,
    required this.eventBusName,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'eventBusName': eventBusName,
      'id': id,
    };
  }

  factory GetEventBusesBus.fromMap(Map<String, dynamic> map) {
    return GetEventBusesBus(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      eventBusName: map['eventBusName'] as String,
      id: map['id'] as String,
    );
  }
}

