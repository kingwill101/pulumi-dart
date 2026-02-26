import 'package:pulumi/pulumi.dart';
import '../framework_deployment_cloud_control_deployment_reference/framework_deployment_cloud_control_deployment_reference.dart';
import '../framework_deployment_cloud_control_metadata/framework_deployment_cloud_control_metadata.dart';
import '../framework_deployment_framework/framework_deployment_framework.dart';
import '../framework_deployment_target_resource_config/framework_deployment_target_resource_config.dart';
import 'framework_deployment_args.dart';

/// Framework deployments represent the assignment of a framework to a target resource. Supported target resources are organizations, folders, and projects.
///
///
/// To get more information about FrameworkDeployment, see:
///
/// * [API documentation](https://docs.cloud.google.com/security-command-center/docs/reference/cloudsecuritycompliance/rest/v1/organizations.locations.frameworkDeployments)
///
/// ## Example Usage
///
/// ## Import
///
/// FrameworkDeployment can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/locations/{{location}}/frameworkDeployments/{{framework_deployment_id}}`
///
/// * `{{organization}}/{{location}}/{{framework_deployment_id}}`
///
/// When using the `pulumi import` command, FrameworkDeployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudsecuritycompliance/frameworkDeployment:FrameworkDeployment default organizations/{{organization}}/locations/{{location}}/frameworkDeployments/{{framework_deployment_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudsecuritycompliance/frameworkDeployment:FrameworkDeployment default {{organization}}/{{location}}/{{framework_deployment_id}}
/// ```
class FrameworkDeployment extends CustomResource {
  /// The references to the cloud control deployments. It has all the
  /// CloudControlDeployments which are either directly added in the framework or
  /// through a CloudControlGroup.
  /// Example: If a framework deployment deploys two
  /// cloud controls, cc-deployment-1 and cc-deployment-2, then the<span pulumi-lang-nodejs="
  /// cloudControlDeploymentReferences " pulumi-lang-dotnet="
  /// CloudControlDeploymentReferences " pulumi-lang-go="
  /// cloudControlDeploymentReferences " pulumi-lang-python="
  /// cloud_control_deployment_references " pulumi-lang-yaml="
  /// cloudControlDeploymentReferences " pulumi-lang-java="
  /// cloudControlDeploymentReferences ">
  /// cloud_control_deployment_references </span>will be:
  /// {
  /// cloud_control_deployment_reference: {
  /// cloud_control_deployment:
  /// "organizations/{organization}/locations/{location}/cloudControlDeployments/cc-deployment-1"
  /// },
  /// cloud_control_deployment_reference: {
  /// cloud_control_deployment:
  /// "organizations/{organization}/locations/{location}/cloudControlDeployments/cc-deployment-2"
  /// }
  /// Structure is documented below.
  late final Output<List<FrameworkDeploymentCloudControlDeploymentReference>>
      cloudControlDeploymentReferences;

  /// Deployment mode and parameters for each of the Cloud Controls in
  /// the framework. Every Cloud Control in the framework must have a
  /// CloudControlMetadata.
  /// Structure is documented below.
  late final Output<List<FrameworkDeploymentCloudControlMetadata>>
      cloudControlMetadatas;

  /// The resource on which the Framework is deployed based on the provided
  /// TargetResourceConfig in the following format:
  /// organizations/{organization}, folders/{folder} or projects/{project}
  late final Output<String> computedTargetResource;

  /// The time at which the resource was created.
  late final Output<String> createTime;

  /// The deployment state of the framework.
  /// Possible values:
  /// DEPLOYMENT_STATE_VALIDATING
  /// DEPLOYMENT_STATE_CREATING
  /// DEPLOYMENT_STATE_DELETING
  /// DEPLOYMENT_STATE_FAILED
  /// DEPLOYMENT_STATE_READY
  /// DEPLOYMENT_STATE_PARTIALLY_DEPLOYED
  /// DEPLOYMENT_STATE_PARTIALLY_DELETED
  late final Output<String> deploymentState;

  /// User provided description of the Framework deployment
  late final Output<String?> description;

  /// To prevent concurrent updates from overwriting each other, always provide
  /// the <span pulumi-lang-nodejs="`etag`" pulumi-lang-dotnet="`Etag`" pulumi-lang-go="`etag`" pulumi-lang-python="`etag`" pulumi-lang-yaml="`etag`" pulumi-lang-java="`etag`">`etag`</span> when you update a FrameworkDeployment. You can also
  /// provide the <span pulumi-lang-nodejs="`etag`" pulumi-lang-dotnet="`Etag`" pulumi-lang-go="`etag`" pulumi-lang-python="`etag`" pulumi-lang-yaml="`etag`" pulumi-lang-java="`etag`">`etag`</span> when you delete a FrameworkDeployment, to help
  /// ensure that you're deleting the intended version of the
  /// FrameworkDeployment.
  late final Output<String> etag;

  /// FrameworkReference contains the reference of a framework.
  /// Structure is documented below.
  late final Output<FrameworkDeploymentFramework> framework;

  /// User provided identifier. It should be unique in scope of a parent.
  /// This is optional and if not provided, a random UUID will be generated.
  late final Output<String> frameworkDeploymentId;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// Identifier. FrameworkDeployment name in the following format:
  /// organizations/{organization}/locations/{location}/frameworkDeployments/{framework_deployment_id}
  late final Output<String> name;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> organization;

  /// TargetResourceConfig contains either the name of the<span pulumi-lang-nodejs=" targetResource " pulumi-lang-dotnet=" TargetResource " pulumi-lang-go=" targetResource " pulumi-lang-python=" target_resource " pulumi-lang-yaml=" targetResource " pulumi-lang-java=" targetResource "> target_resource </span>or
  /// contains the config to create a new target_resource.
  /// Structure is documented below.
  late final Output<FrameworkDeploymentTargetResourceConfig>
      targetResourceConfig;

  /// The display name of the target resource.
  late final Output<String> targetResourceDisplayName;

  /// The time at which the resource last updated.
  late final Output<String> updateTime;

  FrameworkDeployment(
    String name, {
    FrameworkDeploymentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:cloudsecuritycompliance/frameworkDeployment:FrameworkDeployment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cloudControlDeploymentReferences = Output.createUnknown<
        List<FrameworkDeploymentCloudControlDeploymentReference>>();
    this.cloudControlMetadatas =
        Output.createUnknown<List<FrameworkDeploymentCloudControlMetadata>>();
    this.computedTargetResource = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.deploymentState = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.etag = Output.createUnknown<String>();
    this.framework = Output.createUnknown<FrameworkDeploymentFramework>();
    this.frameworkDeploymentId = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.organization = Output.createUnknown<String>();
    this.targetResourceConfig =
        Output.createUnknown<FrameworkDeploymentTargetResourceConfig>();
    this.targetResourceDisplayName = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
