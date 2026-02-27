import 'package:pulumi/pulumi.dart' as pulumi;
import '../mirroring_endpoint_group_association/mirroring_endpoint_group_association.dart';
import '../mirroring_endpoint_group_connected_deployment_group/mirroring_endpoint_group_connected_deployment_group.dart';
import 'mirroring_endpoint_group_args.dart';

/// An endpoint group is a consumer frontend for a deployment group (backend).
/// In order to configure mirroring for a network, consumers must create:
/// - An association between their network and the endpoint group.
/// - A security profile that points to the endpoint group.
/// - A mirroring rule that references the security profile (group).
///
///
/// To get more information about MirroringEndpointGroup, see:
///
/// * [API documentation](https://cloud.google.com/network-security-integration/docs/reference/rest/v1/projects.locations.mirroringEndpointGroups)
/// * How-to Guides
/// * [Mirroring endpoint group overview](https://cloud.google.com/network-security-integration/docs/out-of-band/endpoint-groups-overview)
///
/// ## Example Usage
///
/// ### Network Security Mirroring Endpoint Group Basic
///
///
///
/// ### Network Security Mirroring Endpoint Group Broker Basic
///
///
///
///
/// ## Import
///
/// MirroringEndpointGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/mirroringEndpointGroups/{{mirroring_endpoint_group_id}}`
///
/// * `{{project}}/{{location}}/{{mirroring_endpoint_group_id}}`
///
/// * `{{location}}/{{mirroring_endpoint_group_id}}`
///
/// When using the `pulumi import` command, MirroringEndpointGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/mirroringEndpointGroup:MirroringEndpointGroup default projects/{{project}}/locations/{{location}}/mirroringEndpointGroups/{{mirroring_endpoint_group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/mirroringEndpointGroup:MirroringEndpointGroup default {{project}}/{{location}}/{{mirroring_endpoint_group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/mirroringEndpointGroup:MirroringEndpointGroup default {{location}}/{{mirroring_endpoint_group_id}}
/// ```
class MirroringEndpointGroup extends pulumi.CustomResource {
  /// List of associations to this endpoint group.
  /// Structure is documented below.
  late final pulumi.Output<List<MirroringEndpointGroupAssociation>>
      associations;

  /// List of details about the connected deployment groups to this endpoint
  /// group.
  /// Structure is documented below.
  late final pulumi.Output<List<MirroringEndpointGroupConnectedDeploymentGroup>>
      connectedDeploymentGroups;

  /// The timestamp when the resource was created.
  /// See https://google.aip.dev/148#timestamps.
  late final pulumi.Output<String> createTime;

  /// User-provided description of the endpoint group.
  /// Used as additional context for the endpoint group.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The cloud location of the endpoint group, currently restricted to `global`.
  late final pulumi.Output<String> location;

  /// The deployment group that this DIRECT endpoint group is connected to, for example:
  /// `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  late final pulumi.Output<String?> mirroringDeploymentGroup;

  /// A list of the deployment groups that this BROKER endpoint group is
  /// connected to, for example:
  /// `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  late final pulumi.Output<List<String>?> mirroringDeploymentGroups;

  /// The ID to use for the endpoint group, which will become the final component
  /// of the endpoint group's resource name.
  late final pulumi.Output<String> mirroringEndpointGroupId;

  /// (Output)
  /// The connected deployment group's resource name, for example:
  /// `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The current state of the resource does not match the user's intended state,
  /// and the system is working to reconcile them. This is part of the normal
  /// operation (e.g. adding a new association to the group).
  /// See https://google.aip.dev/128.
  late final pulumi.Output<bool> reconciling;

  /// (Output)
  /// The current state of the association in this location.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// OUT_OF_SYNC
  late final pulumi.Output<String> state;

  /// The type of the endpoint group.
  /// If left unspecified, defaults to DIRECT.
  /// Possible values:
  /// DIRECT
  /// BROKER
  late final pulumi.Output<String?> type;

  /// The timestamp when the resource was most recently updated.
  /// See https://google.aip.dev/148#timestamps.
  late final pulumi.Output<String> updateTime;

  MirroringEndpointGroup(
    String name, {
    MirroringEndpointGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/mirroringEndpointGroup:MirroringEndpointGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.associations =
        registerOutput<List<MirroringEndpointGroupAssociation>>('associations');
    this.connectedDeploymentGroups =
        registerOutput<List<MirroringEndpointGroupConnectedDeploymentGroup>>(
            'connectedDeploymentGroups');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.mirroringDeploymentGroup =
        registerOutput<String?>('mirroringDeploymentGroup');
    this.mirroringDeploymentGroups =
        registerOutput<List<String>?>('mirroringDeploymentGroups');
    this.mirroringEndpointGroupId =
        registerOutput<String>('mirroringEndpointGroupId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.type = registerOutput<String?>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
