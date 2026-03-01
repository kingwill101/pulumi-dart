// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_build_config.dart';
import 'function_event_trigger.dart';
import 'function_service_config.dart';

/// {@template pulumi_cloudfunctionsv2_function_function_args_doc}
/// The set of arguments for Function.
/// {@endtemplate}
/// {@macro pulumi_cloudfunctionsv2_function_function_args_doc}
class FunctionArgs {
  /// Describes the Build step of the function that builds a container
  /// from the given source.
  /// Structure is documented below.
  final pulumi.Input<FunctionBuildConfig>? buildConfig;
  /// User-provided description of a function.
  final pulumi.Input<String>? description;
  /// An Eventarc trigger managed by Google Cloud Functions that fires events in
  /// response to a condition in another service.
  /// Structure is documented below.
  final pulumi.Input<FunctionEventTrigger>? eventTrigger;
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

  /// Creates a new [FunctionArgs].
  /// [buildConfig] Describes the Build step of the function that builds a container
  /// [description] User-provided description of a function.
  /// [eventTrigger] An Eventarc trigger managed by Google Cloud Functions that fires events in
  /// [kmsKeyName] Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources.
  /// [labels] A set of key/value label pairs associated with this Cloud Function.
  /// [location] The location of this cloud function.
  /// [name] A user-defined name of the function. Function names must
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceConfig] Describes the Service being deployed.
  FunctionArgs({
    FunctionBuildConfig? buildConfig,
    String? description,
    FunctionEventTrigger? eventTrigger,
    String? kmsKeyName,
    Map<String, String>? labels,
    required String location,
    String? name,
    String? project,
    FunctionServiceConfig? serviceConfig,
  }) :
      buildConfig = pulumi.Input.asOptionalInput<FunctionBuildConfig>(buildConfig),
      description = pulumi.Input.asOptionalInput<String>(description),
      eventTrigger = pulumi.Input.asOptionalInput<FunctionEventTrigger>(eventTrigger),
      kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceConfig = pulumi.Input.asOptionalInput<FunctionServiceConfig>(serviceConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildConfig': ?pulumi.Input.mapOptionalInputValue<FunctionBuildConfig, Map<String, dynamic>>(buildConfig, (value) => value.toMap()),
      'description': ?description,
      'eventTrigger': ?pulumi.Input.mapOptionalInputValue<FunctionEventTrigger, Map<String, dynamic>>(eventTrigger, (value) => value.toMap()),
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
      'serviceConfig': ?pulumi.Input.mapOptionalInputValue<FunctionServiceConfig, Map<String, dynamic>>(serviceConfig, (value) => value.toMap()),
    };
  }

  factory FunctionArgs.fromMap(Map<String, dynamic> map) {
    return FunctionArgs(
      buildConfig: map['buildConfig'] == null ? null : FunctionBuildConfig.fromMap((map['buildConfig'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      eventTrigger: map['eventTrigger'] == null ? null : FunctionEventTrigger.fromMap((map['eventTrigger'] as Map).cast<String, dynamic>()),
      kmsKeyName: map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceConfig: map['serviceConfig'] == null ? null : FunctionServiceConfig.fromMap((map['serviceConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

