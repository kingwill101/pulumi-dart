// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_config_cloudfunctions_v2alpha.dart';
import 'event_trigger_cloudfunctions_v2alpha.dart';
import 'function_environment_cloudfunctions_v2alpha.dart';
import 'service_config_cloudfunctions_v2alpha.dart';

/// {@template pulumi_cloudfunctions_v2alpha_function_cloudfunctions_v2alpha_args_doc}
/// The set of arguments for Function.
/// {@endtemplate}
/// {@macro pulumi_cloudfunctions_v2alpha_function_cloudfunctions_v2alpha_args_doc}
class FunctionCloudfunctionsV2alphaArgs {
  /// Describes the Build step of the function that builds a container from the given source.
  final pulumi.Input<BuildConfigCloudfunctionsV2alpha>? buildConfig;

  /// User-provided description of a function.
  final pulumi.Input<String>? description;

  /// Describe whether the function is 1st Gen or 2nd Gen.
  final pulumi.Input<FunctionEnvironmentCloudfunctionsV2alpha>? environment;

  /// An Eventarc trigger managed by Google Cloud Functions that fires events in response to a condition in another service.
  final pulumi.Input<EventTriggerCloudfunctionsV2alpha>? eventTrigger;

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
  final pulumi.Input<ServiceConfigCloudfunctionsV2alpha>? serviceConfig;

  /// Creates a new [FunctionCloudfunctionsV2alphaArgs].
  /// [buildConfig] Describes the Build step of the function that builds a container from the given source.
  /// [description] User-provided description of a function.
  /// [environment] Describe whether the function is 1st Gen or 2nd Gen.
  /// [eventTrigger] An Eventarc trigger managed by Google Cloud Functions that fires events in response to a condition in another service.
  /// [functionId] The ID to use for the function, which will become the final component of the function's resource name. This value should be 4-63 characters, and valid characters are /a-z-/.
  /// [kmsKeyName] [Preview] Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  /// [labels] Labels associated with this Cloud Function.
  /// [location] Optional.
  /// [name] A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`
  /// [project] Optional.
  /// [serviceConfig] Describes the Service being deployed. Currently deploys services to Cloud Run (fully managed).
  FunctionCloudfunctionsV2alphaArgs({
    BuildConfigCloudfunctionsV2alpha? buildConfig,
    String? description,
    FunctionEnvironmentCloudfunctionsV2alpha? environment,
    EventTriggerCloudfunctionsV2alpha? eventTrigger,
    String? functionId,
    String? kmsKeyName,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
    ServiceConfigCloudfunctionsV2alpha? serviceConfig,
  })  : buildConfig =
            pulumi.Input.asOptionalInput<BuildConfigCloudfunctionsV2alpha>(
                buildConfig),
        description = pulumi.Input.asOptionalInput<String>(description),
        environment = pulumi.Input.asOptionalInput<
            FunctionEnvironmentCloudfunctionsV2alpha>(environment),
        eventTrigger =
            pulumi.Input.asOptionalInput<EventTriggerCloudfunctionsV2alpha>(
                eventTrigger),
        functionId = pulumi.Input.asOptionalInput<String>(functionId),
        kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        serviceConfig =
            pulumi.Input.asOptionalInput<ServiceConfigCloudfunctionsV2alpha>(
                serviceConfig);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final buildConfigValue = buildConfig;
    if (buildConfigValue != null) {
      map['buildConfig'] = pulumi.Input.mapOptionalInputValue<
          BuildConfigCloudfunctionsV2alpha,
          Map<String, dynamic>>(buildConfigValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final environmentValue = environment;
    if (environmentValue != null) {
      map['environment'] = pulumi.Input.mapOptionalInputValue<
          FunctionEnvironmentCloudfunctionsV2alpha,
          String>(environmentValue, (value) => value.value);
    }
    final eventTriggerValue = eventTrigger;
    if (eventTriggerValue != null) {
      map['eventTrigger'] = pulumi.Input.mapOptionalInputValue<
          EventTriggerCloudfunctionsV2alpha,
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
      map['serviceConfig'] = pulumi.Input.mapOptionalInputValue<
          ServiceConfigCloudfunctionsV2alpha,
          Map<String, dynamic>>(serviceConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory FunctionCloudfunctionsV2alphaArgs.fromMap(Map<String, dynamic> map) {
    return FunctionCloudfunctionsV2alphaArgs(
      buildConfig: map['buildConfig'] == null
          ? null
          : BuildConfigCloudfunctionsV2alpha.fromMap(
              (map['buildConfig'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      environment: map['environment'] == null
          ? null
          : FunctionEnvironmentCloudfunctionsV2alpha.fromValue(
              map['environment'] as String),
      eventTrigger: map['eventTrigger'] == null
          ? null
          : EventTriggerCloudfunctionsV2alpha.fromMap(
              (map['eventTrigger'] as Map).cast<String, dynamic>()),
      functionId:
          map['functionId'] == null ? null : map['functionId'] as String,
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceConfig: map['serviceConfig'] == null
          ? null
          : ServiceConfigCloudfunctionsV2alpha.fromMap(
              (map['serviceConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
