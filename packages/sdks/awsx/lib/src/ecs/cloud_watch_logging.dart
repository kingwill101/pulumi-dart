// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_delivery_mode.dart';

class CloudWatchLogging {
  /// A multiline start pattern in Python strftime format.
  final pulumi.Input<String?>? datetimeFormat;
  /// The ARN of the log group to log to.
  ///
  /// Default - A log group is created automatically.
  final pulumi.Input<String?>? logGroupArn;
  /// Size, in bytes, of the buffer used in non-blocking mode.
  ///
  /// Default - The AWS default of 10 MiB when mode is non-blocking.
  final pulumi.Input<double?>? maxBufferSizeBytes;
  /// The delivery mode for log messages.
  final pulumi.Input<LogDeliveryMode?>? mode;
  /// A multiline start pattern expressed as a regular expression.
  final pulumi.Input<String?>? multilinePattern;
  /// Prefix used for the container's log streams.
  ///
  /// Default - The task component name.
  final pulumi.Input<String?>? streamPrefix;

  /// Creates a new [CloudWatchLogging].
  /// [datetimeFormat] A multiline start pattern in Python strftime format.
  /// [logGroupArn] The ARN of the log group to log to.
  /// [maxBufferSizeBytes] Size, in bytes, of the buffer used in non-blocking mode.
  /// [mode] The delivery mode for log messages.
  /// [multilinePattern] A multiline start pattern expressed as a regular expression.
  /// [streamPrefix] Prefix used for the container's log streams.
  const CloudWatchLogging({
    this.datetimeFormat,
    this.logGroupArn,
    this.maxBufferSizeBytes,
    this.mode,
    this.multilinePattern,
    this.streamPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datetimeFormat': ?datetimeFormat,
      'logGroupArn': ?logGroupArn,
      'maxBufferSizeBytes': ?maxBufferSizeBytes,
      'mode': ?pulumi.Input.mapOptionalInputValue<LogDeliveryMode, String>(mode, (value) => value.wireValue),
      'multilinePattern': ?multilinePattern,
      'streamPrefix': ?streamPrefix,
    };
  }

  factory CloudWatchLogging.fromMap(Map<String, dynamic> map) {
    return CloudWatchLogging(
      datetimeFormat: (() { final guardedValue = map['datetimeFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logGroupArn: (() { final guardedValue = map['logGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxBufferSizeBytes: (() { final guardedValue = map['maxBufferSizeBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogDeliveryMode.fromValue(guardedValue as String)); })(),
      multilinePattern: (() { final guardedValue = map['multilinePattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamPrefix: (() { final guardedValue = map['streamPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
