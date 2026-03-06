// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketReplicationRtc {
  /// Specifies whether to enable the RTC feature. Set to `true` to enable or `false` to disable. This argument is required when the rtc block is defined.
  final pulumi.Input<bool> enabled;
  /// The current status of the RTC feature. This attribute is read-only and is only populated when `enabled` is set to `true`. Possible values are:
  final pulumi.Input<String>? status;

  /// Creates a new [BucketReplicationRtc].
  /// [enabled] Specifies whether to enable the RTC feature. Set to `true` to enable or `false` to disable. This argument is required when the rtc block is defined.
  /// [status] The current status of the RTC feature. This attribute is read-only and is only populated when `enabled` is set to `true`. Possible values are:
  const BucketReplicationRtc({
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
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

