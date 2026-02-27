// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../function_build_config/function_build_config.dart';
import '../function_event_trigger/function_event_trigger_cloudfunctionsv2.dart';
import '../function_service_config/function_service_config.dart';

/// The set of arguments for Function.
class FunctionCloudfunctionsv2Args {
  /// Describes the Build step of the function that builds a container
  /// from the given source.
  /// Structure is documented below.
  final pulumi.Input<FunctionBuildConfig>? buildConfig;

  /// User-provided description of a function.
  final pulumi.Input<String>? description;

  /// An Eventarc trigger managed by Google Cloud Functions that fires events in
  /// response to a condition in another service.
  /// Structure is documented below.
  final pulumi.Input<FunctionEventTriggerCloudfunctionsv2>? eventTrigger;

  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources.
  /// It must match the pattern projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}.
  final pulumi.Input<String>? kmsKeyName;

  /// A set of key/value label pairs associated with this Cloud Function.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location of this cloud function.
  final pulumi.Input<String> location;

  /// A user-defined name of the function. Function names must
  /// be unique globally and match pattern `projects/*/locations/*/functions/*`.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Describes the Service being deployed.
  /// Structure is documented below.
  final pulumi.Input<FunctionServiceConfig>? serviceConfig;

  FunctionCloudfunctionsv2Args({
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
      map['buildConfig'] = pulumi.Input.mapOptionalInputValue<
          FunctionBuildConfig,
          Map<String, dynamic>>(buildConfigValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final eventTriggerValue = eventTrigger;
    if (eventTriggerValue != null) {
      map['eventTrigger'] = pulumi.Input.mapOptionalInputValue<
          FunctionEventTriggerCloudfunctionsv2,
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
      map['serviceConfig'] = pulumi.Input.mapOptionalInputValue<
          FunctionServiceConfig,
          Map<String, dynamic>>(serviceConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory FunctionCloudfunctionsv2Args.fromMap(Map<String, dynamic> map) {
    return FunctionCloudfunctionsv2Args(
      buildConfig:
          pulumi.Input.asOptionalInput<FunctionBuildConfig>(map['buildConfig']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      eventTrigger:
          pulumi.Input.asOptionalInput<FunctionEventTriggerCloudfunctionsv2>(
              map['eventTrigger']),
      kmsKeyName: pulumi.Input.asOptionalInput<String>(map['kmsKeyName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceConfig: pulumi.Input.asOptionalInput<FunctionServiceConfig>(
          map['serviceConfig']),
    );
  }
}
