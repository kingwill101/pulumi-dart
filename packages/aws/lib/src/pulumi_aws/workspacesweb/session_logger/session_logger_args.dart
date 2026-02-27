// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../session_logger_event_filter/session_logger_event_filter.dart';
import '../session_logger_log_configuration/session_logger_log_configuration.dart';

/// The set of arguments for SessionLogger.
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
    final map = <String, dynamic>{};
    final additionalEncryptionContextValue = additionalEncryptionContext;
    if (additionalEncryptionContextValue != null) {
      map['additionalEncryptionContext'] = additionalEncryptionContextValue;
    }
    final customerManagedKeyValue = customerManagedKey;
    if (customerManagedKeyValue != null) {
      map['customerManagedKey'] = customerManagedKeyValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['eventFilter'] = pulumi.Input.mapInputValue<SessionLoggerEventFilter,
        Map<String, dynamic>>(eventFilter, (value) => value.toMap());
    map['logConfiguration'] = pulumi.Input.mapInputValue<
        SessionLoggerLogConfiguration,
        Map<String, dynamic>>(logConfiguration, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory SessionLoggerArgs.fromMap(Map<String, dynamic> map) {
    return SessionLoggerArgs(
      additionalEncryptionContext:
          pulumi.Input.asOptionalInput<Map<String, String>>(
              map['additionalEncryptionContext']),
      customerManagedKey:
          pulumi.Input.asOptionalInput<String>(map['customerManagedKey']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      eventFilter:
          pulumi.Input.asInput<SessionLoggerEventFilter>(map['eventFilter']),
      logConfiguration: pulumi.Input.asInput<SessionLoggerLogConfiguration>(
          map['logConfiguration']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
