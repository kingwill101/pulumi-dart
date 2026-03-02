// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Time and capacity request parameters
class AutoscaleTimeAndCapacityResponse {
  /// The maximum instance count of the cluster
  final pulumi.Input<int>? maxInstanceCount;
  /// The minimum instance count of the cluster
  final pulumi.Input<int>? minInstanceCount;
  /// 24-hour time in the form xx:xx
  final pulumi.Input<String>? time;

  /// Creates a new [AutoscaleTimeAndCapacityResponse].
  /// [maxInstanceCount] The maximum instance count of the cluster
  /// [minInstanceCount] The minimum instance count of the cluster
  /// [time] 24-hour time in the form xx:xx
  AutoscaleTimeAndCapacityResponse({
    this.maxInstanceCount,
    this.minInstanceCount,
    this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxInstanceCount': ?maxInstanceCount,
      'minInstanceCount': ?minInstanceCount,
      'time': ?time,
    };
  }

  factory AutoscaleTimeAndCapacityResponse.fromMap(Map<String, dynamic> map) {
    return AutoscaleTimeAndCapacityResponse(
      maxInstanceCount: map['maxInstanceCount'] == null ? null : (map['maxInstanceCount']! as int).input(),
      minInstanceCount: map['minInstanceCount'] == null ? null : (map['minInstanceCount']! as int).input(),
      time: map['time'] == null ? null : (map['time']! as String).input(),
    );
  }
}

