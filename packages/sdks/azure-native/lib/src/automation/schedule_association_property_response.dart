// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The schedule property associated with the entity.
class ScheduleAssociationPropertyResponse {
  /// Gets or sets the name of the Schedule.
  final pulumi.Input<String>? name;

  /// Creates a new [ScheduleAssociationPropertyResponse].
  /// [name] Gets or sets the name of the Schedule.
  ScheduleAssociationPropertyResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ScheduleAssociationPropertyResponse.fromMap(Map<String, dynamic> map) {
    return ScheduleAssociationPropertyResponse(
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

