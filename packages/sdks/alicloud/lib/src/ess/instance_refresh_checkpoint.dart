// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceRefreshCheckpoint {
  /// The percentage of new instances out of the total instances in the scaling group. The task automatically pauses when this percentage is reached.
  final pulumi.Input<int>? percentage;

  /// Creates a new [InstanceRefreshCheckpoint].
  /// [percentage] The percentage of new instances out of the total instances in the scaling group. The task automatically pauses when this percentage is reached.
  InstanceRefreshCheckpoint({
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentage': ?percentage,
    };
  }

  factory InstanceRefreshCheckpoint.fromMap(Map<String, dynamic> map) {
    return InstanceRefreshCheckpoint(
      percentage: (() { final guardedValue = map['percentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

