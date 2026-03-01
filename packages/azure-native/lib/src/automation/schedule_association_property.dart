// ignore_for_file: unused_element, unnecessary_cast


/// The schedule property associated with the entity.
class ScheduleAssociationProperty {
  /// Gets or sets the name of the Schedule.
  final String? name;

  /// Creates a new [ScheduleAssociationProperty].
  /// [name] Gets or sets the name of the Schedule.
  ScheduleAssociationProperty({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ScheduleAssociationProperty.fromMap(Map<String, dynamic> map) {
    return ScheduleAssociationProperty(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

