// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalyticsApplicationInputsParallelism {
  /// The Count of streams.
  final pulumi.Input<int>? count;

  /// Creates a new [AnalyticsApplicationInputsParallelism].
  /// [count] The Count of streams.
  AnalyticsApplicationInputsParallelism({
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
    };
  }

  factory AnalyticsApplicationInputsParallelism.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationInputsParallelism(
      count: map['count'] == null ? null : (map['count'] as int).input(),
    );
  }
}

