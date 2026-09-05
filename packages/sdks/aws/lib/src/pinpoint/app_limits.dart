// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppLimits {
  /// Maximum number of messages that the campaign can send daily.
  final pulumi.Input<int?>? daily;
  /// Length of time (in seconds) that the campaign can run before it ends and message deliveries stop. This duration begins at the scheduled start time for the campaign. Minimum value is 60.
  final pulumi.Input<int?>? maximumDuration;
  /// Number of messages that the campaign can send per second. Minimum value is 50, and the maximum is 20000.
  final pulumi.Input<int?>? messagesPerSecond;
  /// Maximum total number of messages that the campaign can send.
  final pulumi.Input<int?>? total;

  /// Creates a new [AppLimits].
  /// [daily] Maximum number of messages that the campaign can send daily.
  /// [maximumDuration] Length of time (in seconds) that the campaign can run before it ends and message deliveries stop. This duration begins at the scheduled start time for the campaign. Minimum value is 60.
  /// [messagesPerSecond] Number of messages that the campaign can send per second. Minimum value is 50, and the maximum is 20000.
  /// [total] Maximum total number of messages that the campaign can send.
  const AppLimits({
    this.daily,
    this.maximumDuration,
    this.messagesPerSecond,
    this.total,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daily': ?daily,
      'maximumDuration': ?maximumDuration,
      'messagesPerSecond': ?messagesPerSecond,
      'total': ?total,
    };
  }

  factory AppLimits.fromMap(Map<String, dynamic> map) {
    return AppLimits(
      daily: (() { final guardedValue = map['daily']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maximumDuration: (() { final guardedValue = map['maximumDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      messagesPerSecond: (() { final guardedValue = map['messagesPerSecond']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      total: (() { final guardedValue = map['total']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
