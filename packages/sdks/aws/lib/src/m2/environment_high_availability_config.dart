// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentHighAvailabilityConfig {
  /// Desired number of instances for the Environment.
  final pulumi.Input<int> desiredCapacity;

  /// Creates a new [EnvironmentHighAvailabilityConfig].
  /// [desiredCapacity] Desired number of instances for the Environment.
  EnvironmentHighAvailabilityConfig({
    required this.desiredCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredCapacity': desiredCapacity,
    };
  }

  factory EnvironmentHighAvailabilityConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentHighAvailabilityConfig(
      desiredCapacity: (map['desiredCapacity'] as int).input(),
    );
  }
}

