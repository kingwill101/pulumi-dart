// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'session_logger_event_filter.dart';
import 'session_logger_log_configuration.dart';

/// {@template pulumi_workspacesweb_session_logger_session_logger_args_doc}
/// The set of arguments for SessionLogger.
/// {@endtemplate}
/// {@macro pulumi_workspacesweb_session_logger_session_logger_args_doc}
class SessionLoggerArgs {
  /// Map of additional encryption context key-value pairs.
  final pulumi.Input<Map<String, String>>? additionalEncryptionContext;
  /// ARN of the customer managed KMS key used to encrypt sensitive information.
  final pulumi.Input<String>? customerManagedKey;
  /// Human-readable display name for the session logger resource. Forces replacement if changed.
  final pulumi.Input<String>? displayName;
  /// Event filter that determines which events are logged. See Event Filter below.
  final pulumi.Input<SessionLoggerEventFilter> eventFilter;
  /// Configuration block for specifying where logs are delivered. See Log Configuration below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<SessionLoggerLogConfiguration> logConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SessionLoggerArgs].
  /// [additionalEncryptionContext] Map of additional encryption context key-value pairs.
  /// [customerManagedKey] ARN of the customer managed KMS key used to encrypt sensitive information.
  /// [displayName] Human-readable display name for the session logger resource. Forces replacement if changed.
  /// [eventFilter] Event filter that determines which events are logged. See Event Filter below.
  /// [logConfiguration] Configuration block for specifying where logs are delivered. See Log Configuration below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  SessionLoggerArgs({
    this.additionalEncryptionContext,
    this.customerManagedKey,
    this.displayName,
    required this.eventFilter,
    required this.logConfiguration,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalEncryptionContext': ?additionalEncryptionContext,
      'customerManagedKey': ?customerManagedKey,
      'displayName': ?displayName,
      'eventFilter': pulumi.Input.mapInputValue<SessionLoggerEventFilter, Map<String, dynamic>>(eventFilter, (value) => value.toMap()),
      'logConfiguration': pulumi.Input.mapInputValue<SessionLoggerLogConfiguration, Map<String, dynamic>>(logConfiguration, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory SessionLoggerArgs.fromMap(Map<String, dynamic> map) {
    return SessionLoggerArgs(
      additionalEncryptionContext: map['additionalEncryptionContext'] == null ? null : ((map['additionalEncryptionContext'] as Map).cast<String, String>()).input(),
      customerManagedKey: map['customerManagedKey'] == null ? null : (map['customerManagedKey'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      eventFilter: (SessionLoggerEventFilter.fromMap((map['eventFilter'] as Map).cast<String, dynamic>())).input(),
      logConfiguration: (SessionLoggerLogConfiguration.fromMap((map['logConfiguration'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

