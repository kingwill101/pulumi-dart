// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'session_logger_event_filter.dart';
import 'session_logger_log_configuration.dart';

/// Input properties used for looking up and filtering SessionLogger resources.
class SessionLoggerState {
  /// Map of additional encryption context key-value pairs.
  final pulumi.Input<Map<String, String>>? additionalEncryptionContext;
  /// List of ARNs of the web portals associated with the session logger.
  final pulumi.Input<List<String>>? associatedPortalArns;
  /// ARN of the customer managed KMS key used to encrypt sensitive information.
  final pulumi.Input<String>? customerManagedKey;
  /// Human-readable display name for the session logger resource. Forces replacement if changed.
  final pulumi.Input<String>? displayName;
  /// Event filter that determines which events are logged. See Event Filter below.
  final pulumi.Input<SessionLoggerEventFilter>? eventFilter;
  /// Configuration block for specifying where logs are delivered. See Log Configuration below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<SessionLoggerLogConfiguration>? logConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the session logger.
  final pulumi.Input<String>? sessionLoggerArn;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [SessionLoggerState].
  /// [additionalEncryptionContext] Map of additional encryption context key-value pairs.
  /// [associatedPortalArns] List of ARNs of the web portals associated with the session logger.
  /// [customerManagedKey] ARN of the customer managed KMS key used to encrypt sensitive information.
  /// [displayName] Human-readable display name for the session logger resource. Forces replacement if changed.
  /// [eventFilter] Event filter that determines which events are logged. See Event Filter below.
  /// [logConfiguration] Configuration block for specifying where logs are delivered. See Log Configuration below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sessionLoggerArn] ARN of the session logger.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  SessionLoggerState({
    pulumi.Output<Map<String, String>>? additionalEncryptionContext,
    pulumi.Output<List<String>>? associatedPortalArns,
    pulumi.Output<String>? customerManagedKey,
    pulumi.Output<String>? displayName,
    pulumi.Output<SessionLoggerEventFilter>? eventFilter,
    pulumi.Output<SessionLoggerLogConfiguration>? logConfiguration,
    pulumi.Output<String>? region,
    pulumi.Output<String>? sessionLoggerArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      additionalEncryptionContext = pulumi.Input.asOptionalInput<Map<String, String>>(additionalEncryptionContext),
      associatedPortalArns = pulumi.Input.asOptionalInput<List<String>>(associatedPortalArns),
      customerManagedKey = pulumi.Input.asOptionalInput<String>(customerManagedKey),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      eventFilter = pulumi.Input.asOptionalInput<SessionLoggerEventFilter>(eventFilter),
      logConfiguration = pulumi.Input.asOptionalInput<SessionLoggerLogConfiguration>(logConfiguration),
      region = pulumi.Input.asOptionalInput<String>(region),
      sessionLoggerArn = pulumi.Input.asOptionalInput<String>(sessionLoggerArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalEncryptionContext': ?additionalEncryptionContext,
      'associatedPortalArns': ?associatedPortalArns,
      'customerManagedKey': ?customerManagedKey,
      'displayName': ?displayName,
      'eventFilter': ?pulumi.Input.mapOptionalInputValue<SessionLoggerEventFilter, Map<String, dynamic>>(eventFilter, (value) => value.toMap()),
      'logConfiguration': ?pulumi.Input.mapOptionalInputValue<SessionLoggerLogConfiguration, Map<String, dynamic>>(logConfiguration, (value) => value.toMap()),
      'region': ?region,
      'sessionLoggerArn': ?sessionLoggerArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory SessionLoggerState.fromMap(Map<String, dynamic> map) {
    return SessionLoggerState(
      additionalEncryptionContext: map['additionalEncryptionContext'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalEncryptionContext'] as Map).cast<String, String>()),
      associatedPortalArns: map['associatedPortalArns'] == null ? null : pulumi.Output.create<List<String>>((map['associatedPortalArns'] as List).cast<String>()),
      customerManagedKey: map['customerManagedKey'] == null ? null : pulumi.Output.create<String>(map['customerManagedKey'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      eventFilter: map['eventFilter'] == null ? null : pulumi.Output.create<SessionLoggerEventFilter>(SessionLoggerEventFilter.fromMap((map['eventFilter'] as Map).cast<String, dynamic>())),
      logConfiguration: map['logConfiguration'] == null ? null : pulumi.Output.create<SessionLoggerLogConfiguration>(SessionLoggerLogConfiguration.fromMap((map['logConfiguration'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sessionLoggerArn: map['sessionLoggerArn'] == null ? null : pulumi.Output.create<String>(map['sessionLoggerArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

