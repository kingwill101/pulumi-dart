import 'package:pulumi/pulumi.dart';
import '../session_logger_event_filter/session_logger_event_filter.dart';
import '../session_logger_log_configuration/session_logger_log_configuration.dart';
import 'session_logger_args.dart';

/// Resource for managing an AWS WorkSpaces Web Session Logger.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Complete Configuration with KMS Encryption
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web Session Logger using the `session_logger_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/sessionLogger:SessionLogger example arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/session_logger-id-12345678
/// ```
class SessionLogger extends CustomResource {
  /// Map of additional encryption context key-value pairs.
  late final Output<Map<String, String>?> additionalEncryptionContext;

  /// List of ARNs of the web portals associated with the session logger.
  late final Output<List<String>> associatedPortalArns;

  /// ARN of the customer managed KMS key used to encrypt sensitive information.
  late final Output<String?> customerManagedKey;

  /// Human-readable display name for the session logger resource. Forces replacement if changed.
  late final Output<String?> displayName;

  /// Event filter that determines which events are logged. See Event Filter below.
  late final Output<SessionLoggerEventFilter> eventFilter;

  /// Configuration block for specifying where logs are delivered. See Log Configuration below.
  ///
  /// The following arguments are optional:
  late final Output<SessionLoggerLogConfiguration> logConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the session logger.
  late final Output<String> sessionLoggerArn;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  SessionLogger(
    String name, {
    SessionLoggerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/sessionLogger:SessionLogger',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.additionalEncryptionContext =
        registerOutput<Map<String, String>?>('additionalEncryptionContext');
    this.associatedPortalArns =
        registerOutput<List<String>>('associatedPortalArns');
    this.customerManagedKey = registerOutput<String?>('customerManagedKey');
    this.displayName = registerOutput<String?>('displayName');
    this.eventFilter = registerOutput<SessionLoggerEventFilter>('eventFilter');
    this.logConfiguration =
        registerOutput<SessionLoggerLogConfiguration>('logConfiguration');
    this.region = registerOutput<String>('region');
    this.sessionLoggerArn = registerOutput<String>('sessionLoggerArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
