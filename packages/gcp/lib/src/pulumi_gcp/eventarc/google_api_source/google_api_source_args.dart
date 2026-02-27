// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../google_api_source_logging_config/google_api_source_logging_config.dart';

/// The set of arguments for GoogleApiSource.
class GoogleApiSourceArgs {
  /// Resource annotations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Resource name of a KMS crypto key (managed by the user) used to
  /// encrypt/decrypt their event data.
  /// It must match the pattern
  /// `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final pulumi.Input<String>? cryptoKeyName;

  /// Destination is the message bus that the GoogleApiSource is delivering to.
  /// It must be point to the full resource name of a MessageBus. Format:
  /// "projects/{PROJECT_ID}/locations/{region}/messagesBuses/{MESSAGE_BUS_ID)
  final pulumi.Input<String> destination;

  /// Resource display name.
  final pulumi.Input<String>? displayName;

  /// The user-provided ID to be assigned to the GoogleApiSource. It should match
  /// the format `^a-z?$`.
  final pulumi.Input<String> googleApiSourceId;

  /// Resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// The configuration for Platform Telemetry logging for Eventarc Advanced
  /// resources.
  /// Structure is documented below.
  final pulumi.Input<GoogleApiSourceLoggingConfig>? loggingConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GoogleApiSourceArgs({
    this.annotations,
    this.cryptoKeyName,
    required this.destination,
    this.displayName,
    required this.googleApiSourceId,
    this.labels,
    required this.location,
    this.loggingConfig,
    this.project,
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
    map['destination'] = destination;
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['googleApiSourceId'] = googleApiSourceId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final loggingConfigValue = loggingConfig;
    if (loggingConfigValue != null) {
      map['loggingConfig'] = pulumi.Input.mapOptionalInputValue<
          GoogleApiSourceLoggingConfig,
          Map<String, dynamic>>(loggingConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GoogleApiSourceArgs.fromMap(Map<String, dynamic> map) {
    return GoogleApiSourceArgs(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      cryptoKeyName: pulumi.Input.asOptionalInput<String>(map['cryptoKeyName']),
      destination: pulumi.Input.asInput<String>(map['destination']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      googleApiSourceId: pulumi.Input.asInput<String>(map['googleApiSourceId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      loggingConfig: pulumi.Input.asOptionalInput<GoogleApiSourceLoggingConfig>(
          map['loggingConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
