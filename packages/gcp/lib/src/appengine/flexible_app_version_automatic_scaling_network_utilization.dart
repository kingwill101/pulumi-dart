// ignore_for_file: unused_element, unnecessary_cast

class FlexibleAppVersionAutomaticScalingNetworkUtilization {
  /// Target bytes received per second.
  final int? targetReceivedBytesPerSecond;

  /// Target packets received per second.
  final int? targetReceivedPacketsPerSecond;

  /// Target bytes sent per second.
  final int? targetSentBytesPerSecond;

  /// Target packets sent per second.
  final int? targetSentPacketsPerSecond;

  /// Creates a new [FlexibleAppVersionAutomaticScalingNetworkUtilization].
  /// [targetReceivedBytesPerSecond] Target bytes received per second.
  /// [targetReceivedPacketsPerSecond] Target packets received per second.
  /// [targetSentBytesPerSecond] Target bytes sent per second.
  /// [targetSentPacketsPerSecond] Target packets sent per second.
  FlexibleAppVersionAutomaticScalingNetworkUtilization({
    this.targetReceivedBytesPerSecond,
    this.targetReceivedPacketsPerSecond,
    this.targetSentBytesPerSecond,
    this.targetSentPacketsPerSecond,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetReceivedBytesPerSecond': ?targetReceivedBytesPerSecond,
      'targetReceivedPacketsPerSecond': ?targetReceivedPacketsPerSecond,
      'targetSentBytesPerSecond': ?targetSentBytesPerSecond,
      'targetSentPacketsPerSecond': ?targetSentPacketsPerSecond,
    };
  }

  factory FlexibleAppVersionAutomaticScalingNetworkUtilization.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlexibleAppVersionAutomaticScalingNetworkUtilization(
      targetReceivedBytesPerSecond: map['targetReceivedBytesPerSecond'] == null
          ? null
          : map['targetReceivedBytesPerSecond'] as int,
      targetReceivedPacketsPerSecond:
          map['targetReceivedPacketsPerSecond'] == null
          ? null
          : map['targetReceivedPacketsPerSecond'] as int,
      targetSentBytesPerSecond: map['targetSentBytesPerSecond'] == null
          ? null
          : map['targetSentBytesPerSecond'] as int,
      targetSentPacketsPerSecond: map['targetSentPacketsPerSecond'] == null
          ? null
          : map['targetSentPacketsPerSecond'] as int,
    );
  }
}
