import 'package:pulumi/pulumi.dart';
import 'posture_deployment_args.dart';

/// Represents a deployment of a security posture on a resource. A posture contains user curated policy sets. A posture can
/// be deployed on a project or on a folder or on an organization. To deploy a posture we need to populate the posture's name
/// and its<span pulumi-lang-nodejs=" revisionId " pulumi-lang-dotnet=" RevisionId " pulumi-lang-go=" revisionId " pulumi-lang-python=" revision_id " pulumi-lang-yaml=" revisionId " pulumi-lang-java=" revisionId "> revision_id </span>in the posture deployment configuration. Every update to a deployed posture generates a new revision_id.
/// Thus, the updated<span pulumi-lang-nodejs=" revisionId " pulumi-lang-dotnet=" RevisionId " pulumi-lang-go=" revisionId " pulumi-lang-python=" revision_id " pulumi-lang-yaml=" revisionId " pulumi-lang-java=" revisionId "> revision_id </span>should be used in the respective posture deployment's configuration to deploy that posture
/// on a resource.
///
///
/// To get more information about PostureDeployment, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/securityposture/rest/v1/organizations.locations.postureDeployments)
/// * How-to Guides
/// * [Create and deploy a posture](https://cloud.google.com/security-command-center/docs/how-to-use-security-posture)
///
/// ## Import
///
/// PostureDeployment can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/{{location}}/postureDeployments/{{posture_deployment_id}}`
///
/// When using the `pulumi import` command, PostureDeployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securityposture/postureDeployment:PostureDeployment default {{parent}}/locations/{{location}}/postureDeployments/{{posture_deployment_id}}
/// ```
class PostureDeployment extends CustomResource {
  /// Time the posture deployment was created in UTC.
  late final Output<String> createTime;

  /// Description of the posture deployment.
  late final Output<String?> description;

  /// This is an output only optional field which will be filled in case when
  /// PostureDeployment state is UPDATE_FAILED or CREATE_FAILED or DELETE_FAILED.
  /// It denotes the desired posture to be deployed.
  late final Output<String> desiredPostureId;

  /// This is an output only optional field which will be filled in case when
  /// PostureDeployment state is UPDATE_FAILED or CREATE_FAILED or DELETE_FAILED.
  /// It denotes the desired posture<span pulumi-lang-nodejs=" revisionId " pulumi-lang-dotnet=" RevisionId " pulumi-lang-go=" revisionId " pulumi-lang-python=" revision_id " pulumi-lang-yaml=" revisionId " pulumi-lang-java=" revisionId "> revision_id </span>to be deployed.
  late final Output<String> desiredPostureRevisionId;

  /// For Resource freshness validation (https://google.aip.dev/154)
  late final Output<String> etag;

  /// This is a output only optional field which will be filled in case where
  /// PostureDeployment enters a failure state like UPDATE_FAILED or
  /// CREATE_FAILED or DELETE_FAILED. It will have the failure message for posture deployment's
  /// CREATE/UPDATE/DELETE methods.
  late final Output<String> failureMessage;

  /// The location of the resource, eg. global`.
  late final Output<String> location;

  /// Name of the posture deployment instance.
  late final Output<String> name;

  /// The parent of the resource, an organization. Format should be `organizations/{organization_id}`.
  late final Output<String> parent;

  /// ID of the posture deployment.
  late final Output<String> postureDeploymentId;

  /// Relative name of the posture which needs to be deployed. It should be in the format:
  /// organizations/{organization_id}/locations/{location}/postures/{posture_id}
  late final Output<String> postureId;

  /// Revision_id the posture which needs to be deployed.
  late final Output<String> postureRevisionId;

  /// If set, there are currently changes in flight to the posture deployment.
  late final Output<bool> reconciling;

  /// State of the posture deployment. A posture deployment can be in the following terminal states:
  /// ACTIVE, CREATE_FAILED, UPDATE_FAILED, DELETE_FAILED.
  late final Output<String> state;

  /// The resource on which the posture should be deployed. This can be in one of the following formats:
  /// projects/{project_number},
  /// folders/{folder_number},
  /// organizations/{organization_id}
  late final Output<String> targetResource;

  /// Time the posture deployment was updated in UTC.
  late final Output<String> updateTime;

  PostureDeployment(
    String name, {
    PostureDeploymentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:securityposture/postureDeployment:PostureDeployment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.desiredPostureId = Output.createUnknown<String>();
    this.desiredPostureRevisionId = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.failureMessage = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.parent = Output.createUnknown<String>();
    this.postureDeploymentId = Output.createUnknown<String>();
    this.postureId = Output.createUnknown<String>();
    this.postureRevisionId = Output.createUnknown<String>();
    this.reconciling = Output.createUnknown<bool>();
    this.state = Output.createUnknown<String>();
    this.targetResource = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
