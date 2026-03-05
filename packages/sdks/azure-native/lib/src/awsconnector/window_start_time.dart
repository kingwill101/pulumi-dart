// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of WindowStartTime
class WindowStartTime {
  /// &lt;p&gt;The start hour of the window in Coordinated Universal Time (UTC), using 24-hour time. For example, &lt;code&gt;17&lt;/code&gt; refers to 5:00 P.M. UTC.&lt;/p&gt;
  final pulumi.Input<double>? hours;
  /// &lt;p&gt;The start minute of the window, in UTC.&lt;/p&gt;
  final pulumi.Input<double>? minutes;

  /// Creates a new [WindowStartTime].
  /// [hours] &lt;p&gt;The start hour of the window in Coordinated Universal Time (UTC), using 24-hour time. For example, &lt;code&gt;17&lt;/code&gt; refers to 5:00 P.M. UTC.&lt;/p&gt;
  /// [minutes] &lt;p&gt;The start minute of the window, in UTC.&lt;/p&gt;
  WindowStartTime({
    this.hours,
    this.minutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': ?hours,
      'minutes': ?minutes,
    };
  }

  factory WindowStartTime.fromMap(Map<String, dynamic> map) {
    return WindowStartTime(
      hours: (() { final guardedValue = map['hours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      minutes: (() { final guardedValue = map['minutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

