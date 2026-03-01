// ignore_for_file: unused_element, unnecessary_cast


/// Time and capacity request parameters
class AutoscaleTimeAndCapacity {
  /// The maximum instance count of the cluster
  final int? maxInstanceCount;
  /// The minimum instance count of the cluster
  final int? minInstanceCount;
  /// 24-hour time in the form xx:xx
  final String? time;

  /// Creates a new [AutoscaleTimeAndCapacity].
  /// [maxInstanceCount] The maximum instance count of the cluster
  /// [minInstanceCount] The minimum instance count of the cluster
  /// [time] 24-hour time in the form xx:xx
  AutoscaleTimeAndCapacity({
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

  factory AutoscaleTimeAndCapacity.fromMap(Map<String, dynamic> map) {
    return AutoscaleTimeAndCapacity(
      maxInstanceCount: map['maxInstanceCount'] == null ? null : map['maxInstanceCount'] as int,
      minInstanceCount: map['minInstanceCount'] == null ? null : map['minInstanceCount'] as int,
      time: map['time'] == null ? null : map['time'] as String,
    );
  }
}

