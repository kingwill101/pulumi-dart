// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'microvm_logging_cloudwatch.dart';

class MicrovmLogging {
  /// Send logs to Amazon CloudWatch Logs. See below.
  final pulumi.Input<MicrovmLoggingCloudwatch?>? cloudwatch;
  /// Disable logging for the MicroVM. Specify an empty block: `disabled {}`.
  final pulumi.Input<Map<String, dynamic>?>? disabled;

  /// Creates a new [MicrovmLogging].
  /// [cloudwatch] Send logs to Amazon CloudWatch Logs. See below.
  /// [disabled] Disable logging for the MicroVM. Specify an empty block: `disabled {}`.
  const MicrovmLogging({
    this.cloudwatch,
    this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatch': ?pulumi.Input.mapOptionalInputValue<MicrovmLoggingCloudwatch, Map<String, dynamic>>(cloudwatch, (value) => value.toMap()),
      'disabled': ?disabled,
    };
  }

  factory MicrovmLogging.fromMap(Map<String, dynamic> map) {
    return MicrovmLogging(
      cloudwatch: (() { final guardedValue = map['cloudwatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MicrovmLoggingCloudwatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
