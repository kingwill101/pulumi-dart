// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Api.
class ApiApigeeregistryV1Args {
  /// Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Required. The ID to use for the API, which will become the final component of the API's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.
  final pulumi.Input<String> apiId;

  /// A user-definable description of the availability of this service. Format: free-form, but we expect single words that describe availability, e.g., "NONE", "TESTING", "PREVIEW", "GENERAL", "DEPRECATED", "SHUTDOWN".
  final pulumi.Input<String>? availability;

  /// A detailed description.
  final pulumi.Input<String>? description;

  /// Human-meaningful name.
  final pulumi.Input<String>? displayName;

  /// Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores, and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Resource name.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The recommended deployment of the API. Format: `projects/{project}/locations/{location}/apis/{api}/deployments/{deployment}`
  final pulumi.Input<String>? recommendedDeployment;

  /// The recommended version of the API. Format: `projects/{project}/locations/{location}/apis/{api}/versions/{version}`
  final pulumi.Input<String>? recommendedVersion;

  ApiApigeeregistryV1Args({
    this.annotations,
    required this.apiId,
    this.availability,
    this.description,
    this.displayName,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.recommendedDeployment,
    this.recommendedVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['apiId'] = apiId;
    final availabilityValue = availability;
    if (availabilityValue != null) {
      map['availability'] = availabilityValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
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
    final recommendedDeploymentValue = recommendedDeployment;
    if (recommendedDeploymentValue != null) {
      map['recommendedDeployment'] = recommendedDeploymentValue;
    }
    final recommendedVersionValue = recommendedVersion;
    if (recommendedVersionValue != null) {
      map['recommendedVersion'] = recommendedVersionValue;
    }
    return map;
  }

  factory ApiApigeeregistryV1Args.fromMap(Map<String, dynamic> map) {
    return ApiApigeeregistryV1Args(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      availability: pulumi.Input.asOptionalInput<String>(map['availability']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      recommendedDeployment:
          pulumi.Input.asOptionalInput<String>(map['recommendedDeployment']),
      recommendedVersion:
          pulumi.Input.asOptionalInput<String>(map['recommendedVersion']),
    );
  }
}
