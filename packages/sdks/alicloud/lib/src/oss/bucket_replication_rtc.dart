// ignore_for_file: unused_element, unnecessary_cast


class BucketReplicationRtc {
  /// Specifies whether to enable the RTC feature. Set to `true` to enable or `false` to disable. This argument is required when the rtc block is defined.
  final bool enabled;
  /// The current status of the RTC feature. This attribute is read-only and is only populated when `enabled` is set to `true`. Possible values are:
  final String? status;

  /// Creates a new [BucketReplicationRtc].
  /// [enabled] Specifies whether to enable the RTC feature. Set to `true` to enable or `false` to disable. This argument is required when the rtc block is defined.
  /// [status] The current status of the RTC feature. This attribute is read-only and is only populated when `enabled` is set to `true`. Possible values are:
  BucketReplicationRtc({
    required this.enabled,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'status': ?status,
    };
  }

  factory BucketReplicationRtc.fromMap(Map<String, dynamic> map) {
    return BucketReplicationRtc(
      enabled: map['enabled'] as bool,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

