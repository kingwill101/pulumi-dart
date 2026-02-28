// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'message_bus_logging_config.dart';

/// {@template pulumi_eventarc_message_bus_message_bus_args_doc}
/// The set of arguments for MessageBus.
/// {@endtemplate}
/// {@macro pulumi_eventarc_message_bus_message_bus_args_doc}
class MessageBusArgs {
  /// Optional. Resource annotations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Optional. Resource name of a KMS crypto key (managed by the user) used to
  /// encrypt/decrypt their event data.
  /// It must match the pattern
  /// `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final pulumi.Input<String>? cryptoKeyName;

  /// Optional. Resource display name.
  final pulumi.Input<String>? displayName;

  /// Optional. Resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// The configuration for Platform Telemetry logging for Eventarc Advanced
  /// resources.
  /// Structure is documented below.
  final pulumi.Input<MessageBusLoggingConfig>? loggingConfig;

  /// Required. The user-provided ID to be assigned to the MessageBus. It should match the
  /// format `^a-z?$`.
  final pulumi.Input<String> messageBusId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [MessageBusArgs].
  /// [annotations] Optional. Resource annotations.
  /// [cryptoKeyName] Optional. Resource name of a KMS crypto key (managed by the user) used to
  /// [displayName] Optional. Resource display name.
  /// [labels] Optional. Resource labels.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [loggingConfig] The configuration for Platform Telemetry logging for Eventarc Advanced
  /// [messageBusId] Required. The user-provided ID to be assigned to the MessageBus. It should match the
  /// [project] The ID of the project in which the resource belongs.
  MessageBusArgs({
    Map<String, String>? annotations,
    String? cryptoKeyName,
    String? displayName,
    Map<String, String>? labels,
    required String location,
    MessageBusLoggingConfig? loggingConfig,
    required String messageBusId,
    String? project,
  })  : annotations =
            pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
        cryptoKeyName = pulumi.Input.asOptionalInput<String>(cryptoKeyName),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        loggingConfig = pulumi.Input.asOptionalInput<MessageBusLoggingConfig>(
            loggingConfig),
        messageBusId = pulumi.Input.asInput<String>(messageBusId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final cryptoKeyNameValue = cryptoKeyName;
    if (cryptoKeyNameValue != null) {
      map['cryptoKeyName'] = cryptoKeyNameValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final loggingConfigValue = loggingConfig;
    if (loggingConfigValue != null) {
      map['loggingConfig'] = pulumi.Input.mapOptionalInputValue<
          MessageBusLoggingConfig,
          Map<String, dynamic>>(loggingConfigValue, (value) => value.toMap());
    }
    map['messageBusId'] = messageBusId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory MessageBusArgs.fromMap(Map<String, dynamic> map) {
    return MessageBusArgs(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      cryptoKeyName:
          map['cryptoKeyName'] == null ? null : map['cryptoKeyName'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      loggingConfig: map['loggingConfig'] == null
          ? null
          : MessageBusLoggingConfig.fromMap(
              (map['loggingConfig'] as Map).cast<String, dynamic>()),
      messageBusId: map['messageBusId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
