// ignore_for_file: unused_element, unnecessary_cast


class BgpPolicyContentSourceBlockList {
  /// Statistical cycle range 60-1200.
  final int blockExpireSeconds;
  /// The time (unit second) for automatically releasing the black after triggering the speed limit is 60~2592000.
  final int everySeconds;
  /// The number of times the speed limit is exceeded in a statistical period ranges from 1 to 1200.
  final int exceedLimitTimes;
  /// Type
  final int type;

  /// Creates a new [BgpPolicyContentSourceBlockList].
  /// [blockExpireSeconds] Statistical cycle range 60-1200.
  /// [everySeconds] The time (unit second) for automatically releasing the black after triggering the speed limit is 60~2592000.
  /// [exceedLimitTimes] The number of times the speed limit is exceeded in a statistical period ranges from 1 to 1200.
  /// [type] Type
  BgpPolicyContentSourceBlockList({
    required this.blockExpireSeconds,
    required this.everySeconds,
    required this.exceedLimitTimes,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockExpireSeconds': blockExpireSeconds,
      'everySeconds': everySeconds,
      'exceedLimitTimes': exceedLimitTimes,
      'type': type,
    };
  }

  factory BgpPolicyContentSourceBlockList.fromMap(Map<String, dynamic> map) {
    return BgpPolicyContentSourceBlockList(
      blockExpireSeconds: map['blockExpireSeconds'] as int,
      everySeconds: map['everySeconds'] as int,
      exceedLimitTimes: map['exceedLimitTimes'] as int,
      type: map['type'] as int,
    );
  }
}

