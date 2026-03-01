// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_logging_log4j_logger.dart';
import 'deployment_logging_log_reserve_policy.dart';

class DeploymentLogging {
  /// Custom log template
  final String? log4j2ConfigurationTemplate;
  /// log4j configuration   See `log4j_loggers` below.
  final List<DeploymentLoggingLog4jLogger>? log4jLoggers;
  /// Log retention policy   See `log_reserve_policy` below.
  final DeploymentLoggingLogReservePolicy? logReservePolicy;
  /// Default system log template
  final String? loggingProfile;

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
      'log4jLoggers': ?log4jLoggers == null ? null : pulumi.Input.encodeList<DeploymentLoggingLog4jLogger, Map<String, dynamic>>(log4jLoggers!, (value) => value.toMap()),
      'logReservePolicy': ?logReservePolicy == null ? null : logReservePolicy!.toMap(),
      'loggingProfile': ?loggingProfile,
    };
  }

  factory DeploymentLogging.fromMap(Map<String, dynamic> map) {
    return DeploymentLogging(
      log4j2ConfigurationTemplate: map['log4j2ConfigurationTemplate'] == null ? null : map['log4j2ConfigurationTemplate'] as String,
      log4jLoggers: map['log4jLoggers'] == null ? null : pulumi.Input.decodeList<DeploymentLoggingLog4jLogger>(map['log4jLoggers'], (value) => DeploymentLoggingLog4jLogger.fromMap((value as Map).cast<String, dynamic>())),
      logReservePolicy: map['logReservePolicy'] == null ? null : DeploymentLoggingLogReservePolicy.fromMap((map['logReservePolicy'] as Map).cast<String, dynamic>()),
      loggingProfile: map['loggingProfile'] == null ? null : map['loggingProfile'] as String,
    );
  }
}

