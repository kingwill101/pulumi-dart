// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_consistency_level.dart';

/// The consistency policy for the Cosmos DB database account.
class ConsistencyPolicy {
  /// The default consistency level and configuration settings of the Cosmos DB account.
  final pulumi.Input<DefaultConsistencyLevel> defaultConsistencyLevel;
  /// When used with the Bounded Staleness consistency level, this value represents the time amount of staleness (in seconds) tolerated. Accepted range for this value is 5 - 86400. Required when defaultConsistencyPolicy is set to 'BoundedStaleness'.
  final pulumi.Input<int>? maxIntervalInSeconds;
  /// When used with the Bounded Staleness consistency level, this value represents the number of stale requests tolerated. Accepted range for this value is 1 – 2,147,483,647. Required when defaultConsistencyPolicy is set to 'BoundedStaleness'.
  final pulumi.Input<double>? maxStalenessPrefix;

  /// Creates a new [ConsistencyPolicy].
  /// [defaultConsistencyLevel] The default consistency level and configuration settings of the Cosmos DB account.
  /// [maxIntervalInSeconds] When used with the Bounded Staleness consistency level, this value represents the time amount of staleness (in seconds) tolerated. Accepted range for this value is 5 - 86400. Required when defaultConsistencyPolicy is set to 'BoundedStaleness'.
  /// [maxStalenessPrefix] When used with the Bounded Staleness consistency level, this value represents the number of stale requests tolerated. Accepted range for this value is 1 – 2,147,483,647. Required when defaultConsistencyPolicy is set to 'BoundedStaleness'.
  ConsistencyPolicy({
    required this.defaultConsistencyLevel,
    this.maxIntervalInSeconds,
    this.maxStalenessPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultConsistencyLevel': pulumi.Input.mapInputValue<DefaultConsistencyLevel, String>(defaultConsistencyLevel, (value) => value.value),
      'maxIntervalInSeconds': ?maxIntervalInSeconds,
      'maxStalenessPrefix': ?maxStalenessPrefix,
    };
  }

  factory ConsistencyPolicy.fromMap(Map<String, dynamic> map) {
    return ConsistencyPolicy(
      defaultConsistencyLevel: (DefaultConsistencyLevel.fromValue(map['defaultConsistencyLevel'] as String)).input(),
      maxIntervalInSeconds: map['maxIntervalInSeconds'] == null ? null : (map['maxIntervalInSeconds']! as int).input(),
      maxStalenessPrefix: map['maxStalenessPrefix'] == null ? null : (map['maxStalenessPrefix']! as double).input(),
    );
  }
}

