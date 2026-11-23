// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_watch_logging.dart';

class ContainerLogging {
  /// Settings for sending container logs to CloudWatch Logs with the `awslogs` driver.
  ///
  /// For more information, see [CloudWatch
  /// logging](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_awslogs.html).
  final pulumi.Input<CloudWatchLogging?>? cloudwatch;
  /// Disable collection of this container's stdout and stderr through the log driver. Cannot be
  /// combined with `cloudwatch`.
  ///
  /// Default - false; logs are sent to CloudWatch Logs.
  final pulumi.Input<bool?>? disabled;

  /// Creates a new [ContainerLogging].
  /// [cloudwatch] Settings for sending container logs to CloudWatch Logs with the `awslogs` driver.
  /// [disabled] Disable collection of this container's stdout and stderr through the log driver. Cannot be
  const ContainerLogging({
    this.cloudwatch,
    this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatch': ?pulumi.Input.mapOptionalInputValue<CloudWatchLogging, Map<String, dynamic>>(cloudwatch, (value) => value.toMap()),
      'disabled': ?disabled,
    };
  }

  factory ContainerLogging.fromMap(Map<String, dynamic> map) {
    return ContainerLogging(
      cloudwatch: (() { final guardedValue = map['cloudwatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudWatchLogging.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
