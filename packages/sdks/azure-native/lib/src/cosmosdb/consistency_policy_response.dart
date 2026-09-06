// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The consistency policy for the Cosmos DB database account.
class ConsistencyPolicyResponse {
  /// The default consistency level and configuration settings of the Cosmos DB account.
  final pulumi.Input<String> defaultConsistencyLevel;
  /// When used with the Bounded Staleness consistency level, this value represents the time amount of staleness (in seconds) tolerated. Accepted range for this value is 5 - 86400. Required when defaultConsistencyPolicy is set to 'BoundedStaleness'.
  final pulumi.Input<int?>? maxIntervalInSeconds;
  /// When used with the Bounded Staleness consistency level, this value represents the number of stale requests tolerated. Accepted range for this value is 1 – 2,147,483,647. Required when defaultConsistencyPolicy is set to 'BoundedStaleness'.
  final pulumi.Input<double?>? maxStalenessPrefix;

  /// Creates a new [ConsistencyPolicyResponse].
  /// [defaultConsistencyLevel] The default consistency level and configuration settings of the Cosmos DB account.
  /// [maxIntervalInSeconds] When used with the Bounded Staleness consistency level, this value represents the time amount of staleness (in seconds) tolerated. Accepted range for this value is 5 - 86400. Required when defaultConsistencyPolicy is set to 'BoundedStaleness'.
  /// [maxStalenessPrefix] When used with the Bounded Staleness consistency level, this value represents the number of stale requests tolerated. Accepted range for this value is 1 – 2,147,483,647. Required when defaultConsistencyPolicy is set to 'BoundedStaleness'.
  const ConsistencyPolicyResponse({
    required this.defaultConsistencyLevel,
    this.maxIntervalInSeconds,
    this.maxStalenessPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultConsistencyLevel': defaultConsistencyLevel,
      'maxIntervalInSeconds': ?maxIntervalInSeconds,
      'maxStalenessPrefix': ?maxStalenessPrefix,
    };
  }

  factory ConsistencyPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ConsistencyPolicyResponse(
      defaultConsistencyLevel: pulumi.Input.fromValue(map['defaultConsistencyLevel'] as String),
      maxIntervalInSeconds: (() { final guardedValue = map['maxIntervalInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxStalenessPrefix: (() { final guardedValue = map['maxStalenessPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
