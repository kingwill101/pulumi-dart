// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The time for a scaling action to occur.
class TimeResponse {
  /// The hour.
  final pulumi.Input<int> hour;

  /// The minute.
  final pulumi.Input<int> minute;

  /// Creates a new [TimeResponse].
  /// [hour] The hour.
  /// [minute] The minute.
  TimeResponse({required this.hour, required this.minute});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'hour': hour, 'minute': minute};
  }

  factory TimeResponse.fromMap(Map<String, dynamic> map) {
    return TimeResponse(
      hour: pulumi.Input.fromValue(map['hour'] as int),
      minute: pulumi.Input.fromValue(map['minute'] as int),
    );
  }
}
