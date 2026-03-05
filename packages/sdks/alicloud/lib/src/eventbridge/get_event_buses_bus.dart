// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEventBusesBus {
  /// The time of this bus was created.
  final pulumi.Input<String> createTime;
  /// The description of event bus.
  final pulumi.Input<String> description;
  /// The name of event bus.
  final pulumi.Input<String> eventBusName;
  /// The ID of the Event Bus. Its value is same as Queue Name.
  final pulumi.Input<String> id;

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
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      eventBusName: pulumi.Input.fromValue(map['eventBusName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

