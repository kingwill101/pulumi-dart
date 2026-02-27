// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dataplex_v1_environment_infrastructure_spec.dart';
import 'google_cloud_dataplex_v1_environment_session_spec.dart';

/// The set of arguments for Environment.
class EnvironmentArgs4 {
  /// Optional. Description of the environment.
  final Input<String>? description;

  /// Optional. User friendly display name.
  final Input<String>? displayName;

  /// Required. Environment identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the lake.
  final Input<String> environmentId;

  /// Infrastructure specification for the Environment.
  final Input<GoogleCloudDataplexV1EnvironmentInfrastructureSpec>
      infrastructureSpec;

  /// Optional. User defined labels for the environment.
  final Input<Map<String, String>>? labels;
  final Input<String> lakeId;
  final Input<String>? location;
  final Input<String>? project;

  /// Optional. Configuration for sessions created for this environment.
  final Input<GoogleCloudDataplexV1EnvironmentSessionSpec>? sessionSpec;

  EnvironmentArgs4({
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
    map['infrastructureSpec'] = Input.mapInputValue<
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
      map['sessionSpec'] = Input.mapOptionalInputValue<
          GoogleCloudDataplexV1EnvironmentSessionSpec,
          Map<String, dynamic>>(sessionSpecValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnvironmentArgs4.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs4(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      environmentId: Input.asInput<String>(map['environmentId']),
      infrastructureSpec:
          Input.asInput<GoogleCloudDataplexV1EnvironmentInfrastructureSpec>(
              map['infrastructureSpec']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      lakeId: Input.asInput<String>(map['lakeId']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      sessionSpec:
          Input.asOptionalInput<GoogleCloudDataplexV1EnvironmentSessionSpec>(
              map['sessionSpec']),
    );
  }
}
