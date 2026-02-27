import 'package:pulumi/pulumi.dart';
import 'mirroring_deployment_args.dart';

/// A deployment represents a zonal mirroring backend ready to accept
/// GENEVE-encapsulated replica traffic, e.g. a zonal instance group fronted by
/// an internal passthrough load balancer. Deployments are always part of a
/// global deployment group which represents a global mirroring service.
///
///
/// To get more information about MirroringDeployment, see:
///
/// * [API documentation](https://cloud.google.com/network-security-integration/docs/reference/rest/v1/projects.locations.mirroringDeployments)
/// * How-to Guides
/// * [Mirroring deployment overview](https://cloud.google.com/network-security-integration/docs/out-of-band/deployments-overview)
///
/// ## Example Usage
///
/// ### Network Security Mirroring Deployment Basic
///
///
///
///
/// ## Import
///
/// MirroringDeployment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/mirroringDeployments/{{mirroring_deployment_id}}`
///
/// * `{{project}}/{{location}}/{{mirroring_deployment_id}}`
///
/// * `{{location}}/{{mirroring_deployment_id}}`
///
/// When using the `pulumi import` command, MirroringDeployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/mirroringDeployment:MirroringDeployment default projects/{{project}}/locations/{{location}}/mirroringDeployments/{{mirroring_deployment_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/mirroringDeployment:MirroringDeployment default {{project}}/{{location}}/{{mirroring_deployment_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/mirroringDeployment:MirroringDeployment default {{location}}/{{mirroring_deployment_id}}
/// ```
class MirroringDeployment extends CustomResource {
  /// The timestamp when the resource was created.
  /// See https://google.aip.dev/148#timestamps.
  late final Output<String> createTime;

  /// User-provided description of the deployment.
  /// Used as additional context for the deployment.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The regional forwarding rule that fronts the mirroring collectors, for
  /// example: `projects/123456789/regions/us-central1/forwardingRules/my-rule`.
  /// See https://google.aip.dev/124.
  late final Output<String> forwardingRule;

  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The cloud location of the deployment, e.g. `us-central1-a` or `asia-south1-b`.
  late final Output<String> location;

  /// The deployment group that this deployment is a part of, for example:
  /// `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  late final Output<String> mirroringDeploymentGroup;

  /// The ID to use for the new deployment, which will become the final
  /// component of the deployment's resource name.
  late final Output<String> mirroringDeploymentId;

  /// The resource name of this deployment, for example:
  /// `projects/123456789/locations/us-central1-a/mirroringDeployments/my-dep`.
  /// See https://google.aip.dev/122 for more details.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The current state of the resource does not match the user's intended state,
  /// and the system is working to reconcile them. This part of the normal
  /// operation (e.g. linking a new association to the parent group).
  /// See https://google.aip.dev/128.
  late final Output<bool> reconciling;

  /// The current state of the deployment.
  /// See https://google.aip.dev/216.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// CREATING
  /// DELETING
  /// OUT_OF_SYNC
  /// DELETE_FAILED
  late final Output<String> state;

  /// The timestamp when the resource was most recently updated.
  /// See https://google.aip.dev/148#timestamps.
  late final Output<String> updateTime;

  MirroringDeployment(
    String name, {
    MirroringDeploymentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/mirroringDeployment:MirroringDeployment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.forwardingRule = registerOutput<String>('forwardingRule');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.mirroringDeploymentGroup =
        registerOutput<String>('mirroringDeploymentGroup');
    this.mirroringDeploymentId =
        registerOutput<String>('mirroringDeploymentId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
