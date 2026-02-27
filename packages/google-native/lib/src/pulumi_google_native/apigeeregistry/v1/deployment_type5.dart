import 'package:pulumi/pulumi.dart' hide Config;
import 'deployment_args.dart';

/// Creates a specified deployment.
class DeploymentType5 extends CustomResource {
  /// Text briefly describing how to access the endpoint. Changes to this value will not affect the revision.
  late final Output<String> accessGuidance;

  /// Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  late final Output<Map<String, String>> annotations;

  /// Required. The ID to use for the deployment, which will become the final component of the deployment's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.
  late final Output<String> apiDeploymentId;
  late final Output<String> apiId;

  /// The full resource name (including revision ID) of the spec of the API being served by the deployment. Changes to this value will update the revision. Format: `projects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec@revision}`
  late final Output<String> apiSpecRevision;

  /// Creation timestamp; when the deployment resource was created.
  late final Output<String> createTime;

  /// A detailed description.
  late final Output<String> description;

  /// Human-meaningful name.
  late final Output<String> displayName;

  /// The address where the deployment is serving. Changes to this value will update the revision.
  late final Output<String> endpointUri;

  /// The address of the external channel of the API (e.g., the Developer Portal). Changes to this value will not affect the revision.
  late final Output<String> externalChannelUri;

  /// Text briefly identifying the intended audience of the API. Changes to this value will not affect the revision.
  late final Output<String> intendedAudience;

  /// Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Resource name.
  late final Output<String> name;
  late final Output<String> project;

  /// Revision creation timestamp; when the represented revision was created.
  late final Output<String> revisionCreateTime;

  /// Immutable. The revision ID of the deployment. A new revision is committed whenever the deployment contents are changed. The format is an 8-character hexadecimal string.
  late final Output<String> revisionId;

  /// Last update timestamp: when the represented revision was last modified.
  late final Output<String> revisionUpdateTime;

  DeploymentType5(
    String name, {
    DeploymentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigeeregistry/v1:Deployment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessGuidance = registerOutput<String>('accessGuidance');
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.apiDeploymentId = registerOutput<String>('apiDeploymentId');
    this.apiId = registerOutput<String>('apiId');
    this.apiSpecRevision = registerOutput<String>('apiSpecRevision');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.endpointUri = registerOutput<String>('endpointUri');
    this.externalChannelUri = registerOutput<String>('externalChannelUri');
    this.intendedAudience = registerOutput<String>('intendedAudience');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.revisionCreateTime = registerOutput<String>('revisionCreateTime');
    this.revisionId = registerOutput<String>('revisionId');
    this.revisionUpdateTime = registerOutput<String>('revisionUpdateTime');
  }
}
