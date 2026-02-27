// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_environment_infrastructure_spec.dart';
import 'google_cloud_dataplex_v1_environment_session_spec.dart';

/// The set of arguments for Environment.
class EnvironmentDataplexV1Args {
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

  EnvironmentDataplexV1Args({
    this.description,
    this.displayName,
    required this.environmentId,
    required this.infrastructureSpec,
    this.labels,
    required this.lakeId,
    this.location,
    this.project,
    this.sessionSpec,
  });

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

  factory EnvironmentDataplexV1Args.fromMap(Map<String, dynamic> map) {
    return EnvironmentDataplexV1Args(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      infrastructureSpec: pulumi.Input.asInput<
              GoogleCloudDataplexV1EnvironmentInfrastructureSpec>(
          map['infrastructureSpec']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      lakeId: pulumi.Input.asInput<String>(map['lakeId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sessionSpec: pulumi.Input.asOptionalInput<
          GoogleCloudDataplexV1EnvironmentSessionSpec>(map['sessionSpec']),
    );
  }
}
