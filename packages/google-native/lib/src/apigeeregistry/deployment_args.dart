// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigeeregistry_v1_deployment_args_doc}
/// The set of arguments for Deployment.
/// {@endtemplate}
/// {@macro pulumi_apigeeregistry_v1_deployment_args_doc}
class DeploymentArgs {
  /// Text briefly describing how to access the endpoint. Changes to this value will not affect the revision.
  final pulumi.Input<String>? accessGuidance;

  /// Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Required. The ID to use for the deployment, which will become the final component of the deployment's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.
  final pulumi.Input<String> apiDeploymentId;
  final pulumi.Input<String> apiId;

  /// The full resource name (including revision ID) of the spec of the API being served by the deployment. Changes to this value will update the revision. Format: `projects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec@revision}`
  final pulumi.Input<String>? apiSpecRevision;

  /// A detailed description.
  final pulumi.Input<String>? description;

  /// Human-meaningful name.
  final pulumi.Input<String>? displayName;

  /// The address where the deployment is serving. Changes to this value will update the revision.
  final pulumi.Input<String>? endpointUri;

  /// The address of the external channel of the API (e.g., the Developer Portal). Changes to this value will not affect the revision.
  final pulumi.Input<String>? externalChannelUri;

  /// Text briefly identifying the intended audience of the API. Changes to this value will not affect the revision.
  final pulumi.Input<String>? intendedAudience;

  /// Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Resource name.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [DeploymentArgs].
  /// [accessGuidance] Text briefly describing how to access the endpoint. Changes to this value will not affect the revision.
  /// [annotations] Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  /// [apiDeploymentId] Required. The ID to use for the deployment, which will become the final component of the deployment's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.
  /// [apiId] Required.
  /// [apiSpecRevision] The full resource name (including revision ID) of the spec of the API being served by the deployment. Changes to this value will update the revision. Format: `projects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec@revision}`
  /// [description] A detailed description.
  /// [displayName] Human-meaningful name.
  /// [endpointUri] The address where the deployment is serving. Changes to this value will update the revision.
  /// [externalChannelUri] The address of the external channel of the API (e.g., the Developer Portal). Changes to this value will not affect the revision.
  /// [intendedAudience] Text briefly identifying the intended audience of the API. Changes to this value will not affect the revision.
  /// [labels] Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  /// [location] Optional.
  /// [name] Resource name.
  /// [project] Optional.
  DeploymentArgs({
    String? accessGuidance,
    Map<String, String>? annotations,
    required String apiDeploymentId,
    required String apiId,
    String? apiSpecRevision,
    String? description,
    String? displayName,
    String? endpointUri,
    String? externalChannelUri,
    String? intendedAudience,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
  })  : accessGuidance = pulumi.Input.asOptionalInput<String>(accessGuidance),
        annotations =
            pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
        apiDeploymentId = pulumi.Input.asInput<String>(apiDeploymentId),
        apiId = pulumi.Input.asInput<String>(apiId),
        apiSpecRevision = pulumi.Input.asOptionalInput<String>(apiSpecRevision),
        description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        endpointUri = pulumi.Input.asOptionalInput<String>(endpointUri),
        externalChannelUri =
            pulumi.Input.asOptionalInput<String>(externalChannelUri),
        intendedAudience =
            pulumi.Input.asOptionalInput<String>(intendedAudience),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      accessGuidance: map['accessGuidance'] == null
          ? null
          : map['accessGuidance'] as String,
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      apiDeploymentId: map['apiDeploymentId'] as String,
      apiId: map['apiId'] as String,
      apiSpecRevision: map['apiSpecRevision'] == null
          ? null
          : map['apiSpecRevision'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      endpointUri:
          map['endpointUri'] == null ? null : map['endpointUri'] as String,
      externalChannelUri: map['externalChannelUri'] == null
          ? null
          : map['externalChannelUri'] as String,
      intendedAudience: map['intendedAudience'] == null
          ? null
          : map['intendedAudience'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
