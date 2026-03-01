// ignore_for_file: unused_element, unnecessary_cast


class AccountConsistencyPolicy {
  /// The Consistency Level to use for this CosmosDB Account - can be either `BoundedStaleness`, `Eventual`, `Session`, `Strong` or `ConsistentPrefix`.
  final String consistencyLevel;
  /// When used with the Bounded Staleness consistency level, this value represents the time amount of staleness (in seconds) tolerated. The accepted range for this value is `5` - `86400` (1 day). Defaults to `5`. Required when `consistency_level` is set to `BoundedStaleness`.
  final int? maxIntervalInSeconds;
  /// When used with the Bounded Staleness consistency level, this value represents the number of stale requests tolerated. The accepted range for this value is `10` – `2147483647`. Defaults to `100`. Required when `consistency_level` is set to `BoundedStaleness`.
  ///
  /// > **Note:** `max_interval_in_seconds` and `max_staleness_prefix` can only be set to values other than default when the `consistency_level` is set to `BoundedStaleness`.
  final int? maxStalenessPrefix;

  /// Creates a new [AccountConsistencyPolicy].
  /// [consistencyLevel] The Consistency Level to use for this CosmosDB Account - can be either `BoundedStaleness`, `Eventual`, `Session`, `Strong` or `ConsistentPrefix`.
  /// [maxIntervalInSeconds] When used with the Bounded Staleness consistency level, this value represents the time amount of staleness (in seconds) tolerated. The accepted range for this value is `5` - `86400` (1 day). Defaults to `5`. Required when `consistency_level` is set to `BoundedStaleness`.
  /// [maxStalenessPrefix] When used with the Bounded Staleness consistency level, this value represents the number of stale requests tolerated. The accepted range for this value is `10` – `2147483647`. Defaults to `100`. Required when `consistency_level` is set to `BoundedStaleness`.
  AccountConsistencyPolicy({
    required this.consistencyLevel,
    this.maxIntervalInSeconds,
    this.maxStalenessPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consistencyLevel': consistencyLevel,
      'maxIntervalInSeconds': ?maxIntervalInSeconds,
      'maxStalenessPrefix': ?maxStalenessPrefix,
    };
  }

  factory AccountConsistencyPolicy.fromMap(Map<String, dynamic> map) {
    return AccountConsistencyPolicy(
      consistencyLevel: map['consistencyLevel'] as String,
      maxIntervalInSeconds: map['maxIntervalInSeconds'] == null ? null : map['maxIntervalInSeconds'] as int,
      maxStalenessPrefix: map['maxStalenessPrefix'] == null ? null : map['maxStalenessPrefix'] as int,
    );
  }
}

