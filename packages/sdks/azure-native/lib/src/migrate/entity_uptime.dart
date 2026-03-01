// ignore_for_file: unused_element, unnecessary_cast


/// Entity Uptime.
class EntityUptime {
  /// Gets the days per month.
  final int? daysPerMonth;
  /// Gets the hours per day.
  final int? hoursPerDay;

  /// Creates a new [EntityUptime].
  /// [daysPerMonth] Gets the days per month.
  /// [hoursPerDay] Gets the hours per day.
  EntityUptime({
    this.daysPerMonth,
    this.hoursPerDay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysPerMonth': ?daysPerMonth,
      'hoursPerDay': ?hoursPerDay,
    };
  }

  factory EntityUptime.fromMap(Map<String, dynamic> map) {
    return EntityUptime(
      daysPerMonth: map['daysPerMonth'] == null ? null : map['daysPerMonth'] as int,
      hoursPerDay: map['hoursPerDay'] == null ? null : map['hoursPerDay'] as int,
    );
  }
}

