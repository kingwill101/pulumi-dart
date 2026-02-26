// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../function_build_config/function_build_config.dart';
import '../function_event_trigger/function_event_trigger2.dart';
import '../function_service_config/function_service_config.dart';

/// The set of arguments for Function.
class FunctionArgs2 {
  /// Describes the Build step of the function that builds a container
  /// from the given source.
  /// Structure is documented below.
  final Input<FunctionBuildConfig>? buildConfig;

  /// User-provided description of a function.
  final Input<String>? description;

  /// An Eventarc trigger managed by Google Cloud Functions that fires events in
  /// response to a condition in another service.
  /// Structure is documented below.
  final Input<FunctionEventTrigger2>? eventTrigger;

  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources.
  /// It must match the pattern projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}.
  final Input<String>? kmsKeyName;

  /// A set of key/value label pairs associated with this Cloud Function.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location of this cloud function.
  final Input<String> location;

  /// A user-defined name of the function. Function names must
  /// be unique globally and match pattern `projects/*/locations/*/functions/*`.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Describes the Service being deployed.
  /// Structure is documented below.
  final Input<FunctionServiceConfig>? serviceConfig;

  FunctionArgs2({
    this.buildConfig,
    this.description,
    this.eventTrigger,
    this.kmsKeyName,
    this.labels,
    required this.location,
    this.name,
    this.project,
    this.serviceConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final buildConfigValue = buildConfig;
    if (buildConfigValue != null) {
      map['buildConfig'] = Input.mapOptionalInputValue<FunctionBuildConfig,
          Map<String, dynamic>>(buildConfigValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final eventTriggerValue = eventTrigger;
    if (eventTriggerValue != null) {
      map['eventTrigger'] = Input.mapOptionalInputValue<FunctionEventTrigger2,
          Map<String, dynamic>>(eventTriggerValue, (value) => value.toMap());
    }
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final serviceConfigValue = serviceConfig;
    if (serviceConfigValue != null) {
      map['serviceConfig'] = Input.mapOptionalInputValue<FunctionServiceConfig,
          Map<String, dynamic>>(serviceConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory FunctionArgs2.fromMap(Map<String, dynamic> map) {
    return FunctionArgs2(
      buildConfig:
          Input.asOptionalInput<FunctionBuildConfig>(map['buildConfig']),
      description: Input.asOptionalInput<String>(map['description']),
      eventTrigger:
          Input.asOptionalInput<FunctionEventTrigger2>(map['eventTrigger']),
      kmsKeyName: Input.asOptionalInput<String>(map['kmsKeyName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceConfig:
          Input.asOptionalInput<FunctionServiceConfig>(map['serviceConfig']),
    );
  }
}
