// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Deployment.
class DeploymentArgs {
  /// Text briefly describing how to access the endpoint. Changes to this value will not affect the revision.
  final Input<String>? accessGuidance;

  /// Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  final Input<Map<String, String>>? annotations;

  /// Required. The ID to use for the deployment, which will become the final component of the deployment's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.
  final Input<String> apiDeploymentId;
  final Input<String> apiId;

  /// The full resource name (including revision ID) of the spec of the API being served by the deployment. Changes to this value will update the revision. Format: `projects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec@revision}`
  final Input<String>? apiSpecRevision;

  /// A detailed description.
  final Input<String>? description;

  /// Human-meaningful name.
  final Input<String>? displayName;

  /// The address where the deployment is serving. Changes to this value will update the revision.
  final Input<String>? endpointUri;

  /// The address of the external channel of the API (e.g., the Developer Portal). Changes to this value will not affect the revision.
  final Input<String>? externalChannelUri;

  /// Text briefly identifying the intended audience of the API. Changes to this value will not affect the revision.
  final Input<String>? intendedAudience;

  /// Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Resource name.
  final Input<String>? name;
  final Input<String>? project;

  DeploymentArgs({
    this.accessGuidance,
    this.annotations,
    required this.apiDeploymentId,
    required this.apiId,
    this.apiSpecRevision,
    this.description,
    this.displayName,
    this.endpointUri,
    this.externalChannelUri,
    this.intendedAudience,
    this.labels,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessGuidanceValue = accessGuidance;
    if (accessGuidanceValue != null) {
      map['accessGuidance'] = accessGuidanceValue;
    }
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['apiDeploymentId'] = apiDeploymentId;
    map['apiId'] = apiId;
    final apiSpecRevisionValue = apiSpecRevision;
    if (apiSpecRevisionValue != null) {
      map['apiSpecRevision'] = apiSpecRevisionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final endpointUriValue = endpointUri;
    if (endpointUriValue != null) {
      map['endpointUri'] = endpointUriValue;
    }
    final externalChannelUriValue = externalChannelUri;
    if (externalChannelUriValue != null) {
      map['externalChannelUri'] = externalChannelUriValue;
    }
    final intendedAudienceValue = intendedAudience;
    if (intendedAudienceValue != null) {
      map['intendedAudience'] = intendedAudienceValue;
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
    return map;
  }

  factory DeploymentArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs(
      accessGuidance: Input.asOptionalInput<String>(map['accessGuidance']),
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      apiDeploymentId: Input.asInput<String>(map['apiDeploymentId']),
      apiId: Input.asInput<String>(map['apiId']),
      apiSpecRevision: Input.asOptionalInput<String>(map['apiSpecRevision']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      endpointUri: Input.asOptionalInput<String>(map['endpointUri']),
      externalChannelUri:
          Input.asOptionalInput<String>(map['externalChannelUri']),
      intendedAudience: Input.asOptionalInput<String>(map['intendedAudience']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
