import 'package:pulumi/pulumi.dart';
import '../mirroring_deployment_group_connected_endpoint_group/mirroring_deployment_group_connected_endpoint_group.dart';
import '../mirroring_deployment_group_location/mirroring_deployment_group_location.dart';
import 'mirroring_deployment_group_args.dart';

/// A deployment group aggregates many zonal mirroring backends (deployments)
/// into a single global mirroring service. Consumers can connect this service
/// using an endpoint group.
///
///
/// To get more information about MirroringDeploymentGroup, see:
///
/// * [API documentation](https://cloud.google.com/network-security-integration/docs/reference/rest/v1/projects.locations.mirroringDeploymentGroups)
/// * How-to Guides
/// * [Mirroring deployment group overview](https://cloud.google.com/network-security-integration/docs/out-of-band/deployment-groups-overview)
///
/// ## Example Usage
///
/// ### Network Security Mirroring Deployment Group Basic
///
///
///
///
/// ## Import
///
/// MirroringDeploymentGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/mirroringDeploymentGroups/{{mirroring_deployment_group_id}}`
///
/// * `{{project}}/{{location}}/{{mirroring_deployment_group_id}}`
///
/// * `{{location}}/{{mirroring_deployment_group_id}}`
///
/// When using the `pulumi import` command, MirroringDeploymentGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/mirroringDeploymentGroup:MirroringDeploymentGroup default projects/{{project}}/locations/{{location}}/mirroringDeploymentGroups/{{mirroring_deployment_group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/mirroringDeploymentGroup:MirroringDeploymentGroup default {{project}}/{{location}}/{{mirroring_deployment_group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/mirroringDeploymentGroup:MirroringDeploymentGroup default {{location}}/{{mirroring_deployment_group_id}}
/// ```
class MirroringDeploymentGroup extends CustomResource {
  /// The list of endpoint groups that are connected to this resource.
  /// Structure is documented below.
  late final Output<List<MirroringDeploymentGroupConnectedEndpointGroup>>
      connectedEndpointGroups;

  /// The timestamp when the resource was created.
  /// See https://google.aip.dev/148#timestamps.
  late final Output<String> createTime;

  /// User-provided description of the deployment group.
  /// Used as additional context for the deployment group.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The cloud location of the deployment group, currently restricted to `global`.
  late final Output<String> location;

  /// The list of locations where the deployment group is present.
  /// Structure is documented below.
  late final Output<List<MirroringDeploymentGroupLocation>> locations;

  /// The ID to use for the new deployment group, which will become the final
  /// component of the deployment group's resource name.
  late final Output<String> mirroringDeploymentGroupId;

  /// (Output)
  /// The connected endpoint group's resource name, for example:
  /// `projects/123456789/locations/global/mirroringEndpointGroups/my-eg`.
  /// See https://google.aip.dev/124.
  late final Output<String> name;

  /// The network that will be used for all child deployments, for example:
  /// `projects/{project}/global/networks/{network}`.
  /// See https://google.aip.dev/124.
  late final Output<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The current state of the resource does not match the user's intended state,
  /// and the system is working to reconcile them. This is part of the normal
  /// operation (e.g. adding a new deployment to the group)
  /// See https://google.aip.dev/128.
  late final Output<bool> reconciling;

  /// (Output)
  /// The current state of the association in this location.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// OUT_OF_SYNC
  late final Output<String> state;

  /// The timestamp when the resource was most recently updated.
  /// See https://google.aip.dev/148#timestamps.
  late final Output<String> updateTime;

  MirroringDeploymentGroup(
    String name, {
    MirroringDeploymentGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/mirroringDeploymentGroup:MirroringDeploymentGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.connectedEndpointGroups =
        registerOutput<List<MirroringDeploymentGroupConnectedEndpointGroup>>(
            'connectedEndpointGroups');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.locations =
        registerOutput<List<MirroringDeploymentGroupLocation>>('locations');
    this.mirroringDeploymentGroupId =
        registerOutput<String>('mirroringDeploymentGroupId');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
