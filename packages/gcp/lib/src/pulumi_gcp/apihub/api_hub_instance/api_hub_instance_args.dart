// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../api_hub_instance_config/api_hub_instance_config.dart';

/// The set of arguments for ApiHubInstance.
class ApiHubInstanceArgs {
  /// Optional. Identifier to assign to the Api Hub instance. Must be unique within
  /// scope of the parent resource. If the field is not provided,
  /// system generated id will be used.
  /// This value should be 4-40 characters, and valid characters
  /// are `/a-z[0-9]-_/`.
  final Input<String>? apiHubInstanceId;

  /// Available configurations to provision an ApiHub Instance.
  /// Structure is documented below.
  final Input<ApiHubInstanceConfig> config;

  /// Optional. Description of the ApiHub instance.
  final Input<String>? description;

  /// Optional. Instance labels to represent user-provided metadata.
  /// Refer to cloud documentation on labels for more details.
  /// https://cloud.google.com/compute/docs/labeling-resources
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  ApiHubInstanceArgs({
    this.apiHubInstanceId,
    required this.config,
    this.description,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiHubInstanceIdValue = apiHubInstanceId;
    if (apiHubInstanceIdValue != null) {
      map['apiHubInstanceId'] = apiHubInstanceIdValue;
    }
    map['config'] =
        Input.mapInputValue<ApiHubInstanceConfig, Map<String, dynamic>>(
            config, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ApiHubInstanceArgs.fromMap(Map<String, dynamic> map) {
    return ApiHubInstanceArgs(
      apiHubInstanceId: Input.asOptionalInput<String>(map['apiHubInstanceId']),
      config: Input.asInput<ApiHubInstanceConfig>(map['config']),
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
