// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountThrottleSetting {
  /// Absolute maximum number of times API Gateway allows the API to be called per second.
  final pulumi.Input<int> burstLimit;
  /// Number of times API Gateway allows the API to be called per second on average.
  final pulumi.Input<double> rateLimit;

  /// Creates a new [AccountThrottleSetting].
  /// [burstLimit] Absolute maximum number of times API Gateway allows the API to be called per second.
  /// [rateLimit] Number of times API Gateway allows the API to be called per second on average.
  const AccountThrottleSetting({
    required this.burstLimit,
    required this.rateLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'burstLimit': burstLimit,
      'rateLimit': rateLimit,
    };
  }

  factory AccountThrottleSetting.fromMap(Map<String, dynamic> map) {
    return AccountThrottleSetting(
      burstLimit: pulumi.Input.fromValue(map['burstLimit'] as int),
      rateLimit: pulumi.Input.fromValue(map['rateLimit'] as double),
    );
  }
}
