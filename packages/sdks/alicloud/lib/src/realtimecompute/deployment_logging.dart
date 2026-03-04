// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_logging_log4j_logger.dart';
import 'deployment_logging_log_reserve_policy.dart';

class DeploymentLogging {
  /// Custom log template
  final pulumi.Input<String>? log4j2ConfigurationTemplate;

  /// log4j configuration   See `log4j_loggers` below.
  final pulumi.Input<List<DeploymentLoggingLog4jLogger>>? log4jLoggers;

  /// Log retention policy   See `log_reserve_policy` below.
  final pulumi.Input<DeploymentLoggingLogReservePolicy>? logReservePolicy;

  /// Default system log template
  final pulumi.Input<String>? loggingProfile;

  /// Creates a new [DeploymentLogging].
  /// [log4j2ConfigurationTemplate] Custom log template
  /// [log4jLoggers] log4j configuration   See `log4j_loggers` below.
  /// [logReservePolicy] Log retention policy   See `log_reserve_policy` below.
  /// [loggingProfile] Default system log template
  DeploymentLogging({
    this.log4j2ConfigurationTemplate,
    this.log4jLoggers,
    this.logReservePolicy,
    this.loggingProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'log4j2ConfigurationTemplate': ?log4j2ConfigurationTemplate,
      'log4jLoggers':
          ?pulumi.Input.mapOptionalInputValue<
            List<DeploymentLoggingLog4jLogger>,
            List<Map<String, dynamic>>
          >(
            log4jLoggers,
            (value) =>
                pulumi.Input.encodeList<
                  DeploymentLoggingLog4jLogger,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'logReservePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            DeploymentLoggingLogReservePolicy,
            Map<String, dynamic>
          >(logReservePolicy, (value) => value.toMap()),
      'loggingProfile': ?loggingProfile,
    };
  }

  factory DeploymentLogging.fromMap(Map<String, dynamic> map) {
    return DeploymentLogging(
      log4j2ConfigurationTemplate: (() {
        final guardedValue = map['log4j2ConfigurationTemplate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      log4jLoggers: (() {
        final guardedValue = map['log4jLoggers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DeploymentLoggingLog4jLogger>(
            guardedValue,
            (value) => DeploymentLoggingLog4jLogger.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      logReservePolicy: (() {
        final guardedValue = map['logReservePolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeploymentLoggingLogReservePolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      loggingProfile: (() {
        final guardedValue = map['loggingProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
