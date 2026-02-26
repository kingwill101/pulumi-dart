// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'build_config2.dart';
import 'event_trigger3.dart';
import 'function_environment2.dart';
import 'service_config2.dart';

/// The set of arguments for Function.
class FunctionArgs3 {
  /// Describes the Build step of the function that builds a container from the given source.
  final Input<BuildConfig2>? buildConfig;

  /// User-provided description of a function.
  final Input<String>? description;

  /// Describe whether the function is 1st Gen or 2nd Gen.
  final Input<FunctionEnvironment2>? environment;

  /// An Eventarc trigger managed by Google Cloud Functions that fires events in response to a condition in another service.
  final Input<EventTrigger3>? eventTrigger;

  /// The ID to use for the function, which will become the final component of the function's resource name. This value should be 4-63 characters, and valid characters are /a-z-/.
  final Input<String>? functionId;

  /// [Preview] Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  final Input<String>? kmsKeyName;

  /// Labels associated with this Cloud Function.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`
  final Input<String>? name;
  final Input<String>? project;

  /// Describes the Service being deployed. Currently deploys services to Cloud Run (fully managed).
  final Input<ServiceConfig2>? serviceConfig;

  FunctionArgs3({
    this.buildConfig,
    this.description,
    this.environment,
    this.eventTrigger,
    this.functionId,
    this.kmsKeyName,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.serviceConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final buildConfigValue = buildConfig;
    if (buildConfigValue != null) {
      map['buildConfig'] =
          Input.mapOptionalInputValue<BuildConfig2, Map<String, dynamic>>(
              buildConfigValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final environmentValue = environment;
    if (environmentValue != null) {
      map['environment'] =
          Input.mapOptionalInputValue<FunctionEnvironment2, String>(
              environmentValue, (value) => value.value);
    }
    final eventTriggerValue = eventTrigger;
    if (eventTriggerValue != null) {
      map['eventTrigger'] =
          Input.mapOptionalInputValue<EventTrigger3, Map<String, dynamic>>(
              eventTriggerValue, (value) => value.toMap());
    }
    final functionIdValue = functionId;
    if (functionIdValue != null) {
      map['functionId'] = functionIdValue;
    }
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
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
      map['serviceConfig'] =
          Input.mapOptionalInputValue<ServiceConfig2, Map<String, dynamic>>(
              serviceConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory FunctionArgs3.fromMap(Map<String, dynamic> map) {
    return FunctionArgs3(
      buildConfig: Input.asOptionalInput<BuildConfig2>(map['buildConfig']),
      description: Input.asOptionalInput<String>(map['description']),
      environment:
          Input.asOptionalInput<FunctionEnvironment2>(map['environment']),
      eventTrigger: Input.asOptionalInput<EventTrigger3>(map['eventTrigger']),
      functionId: Input.asOptionalInput<String>(map['functionId']),
      kmsKeyName: Input.asOptionalInput<String>(map['kmsKeyName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceConfig:
          Input.asOptionalInput<ServiceConfig2>(map['serviceConfig']),
    );
  }
}
