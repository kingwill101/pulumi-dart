// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The schedule property associated with the entity.
class ScheduleAssociationProperty {
  /// Gets or sets the name of the Schedule.
  final pulumi.Input<String>? name;

  /// Creates a new [ScheduleAssociationProperty].
  /// [name] Gets or sets the name of the Schedule.
  ScheduleAssociationProperty({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory ScheduleAssociationProperty.fromMap(Map<String, dynamic> map) {
    return ScheduleAssociationProperty(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
