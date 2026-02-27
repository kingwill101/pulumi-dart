// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_config.dart';
import 'event_trigger_cloudfunctions_v2.dart';
import 'function_environment.dart';
import 'service_config.dart';

/// The set of arguments for Function.
class FunctionCloudfunctionsV2Args {
  /// Describes the Build step of the function that builds a container from the given source.
  final pulumi.Input<BuildConfig>? buildConfig;

  /// User-provided description of a function.
  final pulumi.Input<String>? description;

  /// Describe whether the function is 1st Gen or 2nd Gen.
  final pulumi.Input<FunctionEnvironment>? environment;

  /// An Eventarc trigger managed by Google Cloud Functions that fires events in response to a condition in another service.
  final pulumi.Input<EventTriggerCloudfunctionsV2>? eventTrigger;

  /// The ID to use for the function, which will become the final component of the function's resource name. This value should be 4-63 characters, and valid characters are /a-z-/.
  final pulumi.Input<String>? functionId;

  /// [Preview] Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  final pulumi.Input<String>? kmsKeyName;

  /// Labels associated with this Cloud Function.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Describes the Service being deployed. Currently deploys services to Cloud Run (fully managed).
  final pulumi.Input<ServiceConfig>? serviceConfig;

  FunctionCloudfunctionsV2Args({
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
          pulumi.Input.mapOptionalInputValue<BuildConfig, Map<String, dynamic>>(
              buildConfigValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final environmentValue = environment;
    if (environmentValue != null) {
      map['environment'] =
          pulumi.Input.mapOptionalInputValue<FunctionEnvironment, String>(
              environmentValue, (value) => value.value);
    }
    final eventTriggerValue = eventTrigger;
    if (eventTriggerValue != null) {
      map['eventTrigger'] = pulumi.Input.mapOptionalInputValue<
          EventTriggerCloudfunctionsV2,
          Map<String, dynamic>>(eventTriggerValue, (value) => value.toMap());
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
      map['serviceConfig'] = pulumi.Input.mapOptionalInputValue<ServiceConfig,
          Map<String, dynamic>>(serviceConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory FunctionCloudfunctionsV2Args.fromMap(Map<String, dynamic> map) {
    return FunctionCloudfunctionsV2Args(
      buildConfig:
          pulumi.Input.asOptionalInput<BuildConfig>(map['buildConfig']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      environment:
          pulumi.Input.asOptionalInput<FunctionEnvironment>(map['environment']),
      eventTrigger: pulumi.Input.asOptionalInput<EventTriggerCloudfunctionsV2>(
          map['eventTrigger']),
      functionId: pulumi.Input.asOptionalInput<String>(map['functionId']),
      kmsKeyName: pulumi.Input.asOptionalInput<String>(map['kmsKeyName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceConfig:
          pulumi.Input.asOptionalInput<ServiceConfig>(map['serviceConfig']),
    );
  }
}
