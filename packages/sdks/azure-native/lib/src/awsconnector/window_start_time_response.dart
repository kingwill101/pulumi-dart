// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of WindowStartTime
class WindowStartTimeResponse {
  /// <p>The start hour of the window in Coordinated Universal Time (UTC), using 24-hour time. For example, <code>17</code> refers to 5:00 P.M. UTC.</p>
  final pulumi.Input<double>? hours;
  /// <p>The start minute of the window, in UTC.</p>
  final pulumi.Input<double>? minutes;

  /// Creates a new [WindowStartTimeResponse].
  /// [hours] <p>The start hour of the window in Coordinated Universal Time (UTC), using 24-hour time. For example, <code>17</code> refers to 5:00 P.M. UTC.</p>
  /// [minutes] <p>The start minute of the window, in UTC.</p>
  WindowStartTimeResponse({
    this.hours,
    this.minutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': ?hours,
      'minutes': ?minutes,
    };
  }

  factory WindowStartTimeResponse.fromMap(Map<String, dynamic> map) {
    return WindowStartTimeResponse(
      hours: map['hours'] == null ? null : (map['hours']! as double).input(),
      minutes: map['minutes'] == null ? null : (map['minutes']! as double).input(),
    );
  }
}

