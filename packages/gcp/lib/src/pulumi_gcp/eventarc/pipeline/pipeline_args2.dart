// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../pipeline_destination/pipeline_destination.dart';
import '../pipeline_input_payload_format/pipeline_input_payload_format.dart';
import '../pipeline_logging_config/pipeline_logging_config.dart';
import '../pipeline_mediation/pipeline_mediation.dart';
import '../pipeline_retry_policy/pipeline_retry_policy.dart';

/// The set of arguments for Pipeline.
class PipelineArgs2 {
  /// User-defined annotations. See https://google.aip.dev/128#annotations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// Resource name of a KMS crypto key (managed by the user) used to
  /// encrypt/decrypt the event data. If not set, an internal Google-owned key
  /// will be used to encrypt messages. It must match the pattern
  /// "projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key}".
  final Input<String>? cryptoKeyName;

  /// List of destinations to which messages will be forwarded. Currently,
  /// exactly one destination is supported per Pipeline.
  /// Structure is documented below.
  final Input<List<PipelineDestination>> destinations;

  /// Display name of resource.
  final Input<String>? displayName;

  /// Represents the format of message data.
  /// Structure is documented below.
  final Input<PipelineInputPayloadFormat>? inputPayloadFormat;

  /// User labels attached to the Pipeline that can be used to group
  /// resources. An object containing a list of "key": value pairs. Example: {
  /// "name": "wrench", "mass": "1.3kg", "count": "3" }.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// The configuration for Platform Telemetry logging for Eventarc Advanced
  /// resources.
  /// Structure is documented below.
  final Input<PipelineLoggingConfig>? loggingConfig;

  /// List of mediation operations to be performed on the message. Currently,
  /// only one Transformation operation is allowed in each Pipeline.
  /// Structure is documented below.
  final Input<List<PipelineMediation>>? mediations;

  /// The user-provided ID to be assigned to the Pipeline. It should match the
  /// format `^a-z?$`.
  final Input<String> pipelineId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The retry policy configuration for the Pipeline. The pipeline
  /// exponentially backs off in case the destination is non responsive or
  /// returns a retryable error code. The default semantics are as follows:
  /// The backoff starts with a 5 second delay and doubles the
  /// delay after each failed attempt (10 seconds, 20 seconds, 40 seconds, etc.).
  /// The delay is capped at 60 seconds by default.
  /// Please note that if you set the min_retry_delay and max_retry_delay fields
  /// to the same value this will make the duration between retries constant.
  /// Structure is documented below.
  final Input<PipelineRetryPolicy>? retryPolicy;

  PipelineArgs2({
    this.annotations,
    this.cryptoKeyName,
    required this.destinations,
    this.displayName,
    this.inputPayloadFormat,
    this.labels,
    required this.location,
    this.loggingConfig,
    this.mediations,
    required this.pipelineId,
    this.project,
    this.retryPolicy,
  });

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
    map['destinations'] = Input.mapInputValue<List<PipelineDestination>,
            List<Map<String, dynamic>>>(
        destinations,
        (value) => Input.encodeList<PipelineDestination, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final inputPayloadFormatValue = inputPayloadFormat;
    if (inputPayloadFormatValue != null) {
      map['inputPayloadFormat'] = Input.mapOptionalInputValue<
              PipelineInputPayloadFormat, Map<String, dynamic>>(
          inputPayloadFormatValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final loggingConfigValue = loggingConfig;
    if (loggingConfigValue != null) {
      map['loggingConfig'] = Input.mapOptionalInputValue<PipelineLoggingConfig,
          Map<String, dynamic>>(loggingConfigValue, (value) => value.toMap());
    }
    final mediationsValue = mediations;
    if (mediationsValue != null) {
      map['mediations'] = Input.mapOptionalInputValue<List<PipelineMediation>,
              List<Map<String, dynamic>>>(
          mediationsValue,
          (value) => Input.encodeList<PipelineMediation, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    map['pipelineId'] = pipelineId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final retryPolicyValue = retryPolicy;
    if (retryPolicyValue != null) {
      map['retryPolicy'] = Input.mapOptionalInputValue<PipelineRetryPolicy,
          Map<String, dynamic>>(retryPolicyValue, (value) => value.toMap());
    }
    return map;
  }

  factory PipelineArgs2.fromMap(Map<String, dynamic> map) {
    return PipelineArgs2(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      cryptoKeyName: Input.asOptionalInput<String>(map['cryptoKeyName']),
      destinations:
          Input.asInput<List<PipelineDestination>>(map['destinations']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      inputPayloadFormat: Input.asOptionalInput<PipelineInputPayloadFormat>(
          map['inputPayloadFormat']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      loggingConfig:
          Input.asOptionalInput<PipelineLoggingConfig>(map['loggingConfig']),
      mediations:
          Input.asOptionalInput<List<PipelineMediation>>(map['mediations']),
      pipelineId: Input.asInput<String>(map['pipelineId']),
      project: Input.asOptionalInput<String>(map['project']),
      retryPolicy:
          Input.asOptionalInput<PipelineRetryPolicy>(map['retryPolicy']),
    );
  }
}
