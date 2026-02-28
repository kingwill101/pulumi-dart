// ignore_for_file: unused_element, unnecessary_cast

/// The throughput capacity configuration for each partition.
class Capacity {
  /// Publish throughput capacity per partition in MiB/s. Must be >= 4 and <= 16.
  final int? publishMibPerSec;

  /// Subscribe throughput capacity per partition in MiB/s. Must be >= 4 and <= 32.
  final int? subscribeMibPerSec;

  /// Creates a new [Capacity].
  /// [publishMibPerSec] Publish throughput capacity per partition in MiB/s. Must be >= 4 and <= 16.
  /// [subscribeMibPerSec] Subscribe throughput capacity per partition in MiB/s. Must be >= 4 and <= 32.
  Capacity({
    this.publishMibPerSec,
    this.subscribeMibPerSec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final publishMibPerSecValue = publishMibPerSec;
    if (publishMibPerSecValue != null) {
      map['publishMibPerSec'] = publishMibPerSecValue;
    }
    final subscribeMibPerSecValue = subscribeMibPerSec;
    if (subscribeMibPerSecValue != null) {
      map['subscribeMibPerSec'] = subscribeMibPerSecValue;
    }
    return map;
  }

  factory Capacity.fromMap(Map<String, dynamic> map) {
    return Capacity(
      publishMibPerSec: map['publishMibPerSec'] == null
          ? null
          : map['publishMibPerSec'] as int,
      subscribeMibPerSec: map['subscribeMibPerSec'] == null
          ? null
          : map['subscribeMibPerSec'] as int,
    );
  }
}
