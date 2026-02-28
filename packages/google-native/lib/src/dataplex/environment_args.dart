// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_environment_infrastructure_spec.dart';
import 'google_cloud_dataplex_v1_environment_session_spec.dart';

/// {@template pulumi_dataplex_v1_environment_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_environment_args_doc}
class EnvironmentArgs {
  /// Optional. Description of the environment.
  final pulumi.Input<String>? description;

  /// Optional. User friendly display name.
  final pulumi.Input<String>? displayName;

  /// Required. Environment identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the lake.
  final pulumi.Input<String> environmentId;

  /// Infrastructure specification for the Environment.
  final pulumi.Input<GoogleCloudDataplexV1EnvironmentInfrastructureSpec>
      infrastructureSpec;

  /// Optional. User defined labels for the environment.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Optional. Configuration for sessions created for this environment.
  final pulumi.Input<GoogleCloudDataplexV1EnvironmentSessionSpec>? sessionSpec;

  /// Creates a new [EnvironmentArgs].
  /// [description] Optional. Description of the environment.
  /// [displayName] Optional. User friendly display name.
  /// [environmentId] Required. Environment identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the lake.
  /// [infrastructureSpec] Infrastructure specification for the Environment.
  /// [labels] Optional. User defined labels for the environment.
  /// [lakeId] Required.
  /// [location] Optional.
  /// [project] Optional.
  /// [sessionSpec] Optional. Configuration for sessions created for this environment.
  EnvironmentArgs({
    String? description,
    String? displayName,
    required String environmentId,
    required GoogleCloudDataplexV1EnvironmentInfrastructureSpec
        infrastructureSpec,
    Map<String, String>? labels,
    required String lakeId,
    String? location,
    String? project,
    GoogleCloudDataplexV1EnvironmentSessionSpec? sessionSpec,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        environmentId = pulumi.Input.asInput<String>(environmentId),
        infrastructureSpec = pulumi.Input.asInput<
                GoogleCloudDataplexV1EnvironmentInfrastructureSpec>(
            infrastructureSpec),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        lakeId = pulumi.Input.asInput<String>(lakeId),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        sessionSpec = pulumi.Input.asOptionalInput<
            GoogleCloudDataplexV1EnvironmentSessionSpec>(sessionSpec);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['environmentId'] = environmentId;
    map['infrastructureSpec'] = pulumi.Input.mapInputValue<
        GoogleCloudDataplexV1EnvironmentInfrastructureSpec,
        Map<String, dynamic>>(infrastructureSpec, (value) => value.toMap());
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['lakeId'] = lakeId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final sessionSpecValue = sessionSpec;
    if (sessionSpecValue != null) {
      map['sessionSpec'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDataplexV1EnvironmentSessionSpec,
          Map<String, dynamic>>(sessionSpecValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      environmentId: map['environmentId'] as String,
      infrastructureSpec:
          GoogleCloudDataplexV1EnvironmentInfrastructureSpec.fromMap(
              (map['infrastructureSpec'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      lakeId: map['lakeId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sessionSpec: map['sessionSpec'] == null
          ? null
          : GoogleCloudDataplexV1EnvironmentSessionSpec.fromMap(
              (map['sessionSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
