import 'package:pulumi/pulumi.dart';
import '../mirroring_endpoint_group_association_location/mirroring_endpoint_group_association_location.dart';
import '../mirroring_endpoint_group_association_locations_detail/mirroring_endpoint_group_association_locations_detail.dart';
import 'mirroring_endpoint_group_association_args.dart';

/// An endpoint group association represents a link between a network and an
/// endpoint group in the organization.
///
/// Creating an association creates the networking infrastructure linking the
/// network to the endpoint group, but does not enable mirroring by itself.
/// To enable mirroring, the user must also create a network firewall policy
/// containing mirroring rules and associate it with the network.
///
///
/// To get more information about MirroringEndpointGroupAssociation, see:
///
/// * [API documentation](https://cloud.google.com/network-security-integration/docs/reference/rest/v1/projects.locations.mirroringEndpointGroupAssociations)
/// * How-to Guides
/// * [Mirroring endpoint group association overview](https://cloud.google.com/network-security-integration/docs/out-of-band/endpoint-groups-overview#mirroring-endpoint-group-association)
///
/// ## Example Usage
///
/// ### Network Security Mirroring Endpoint Group Association Basic
///
///
///
///
/// ## Import
///
/// MirroringEndpointGroupAssociation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/mirroringEndpointGroupAssociations/{{mirroring_endpoint_group_association_id}}`
///
/// * `{{project}}/{{location}}/{{mirroring_endpoint_group_association_id}}`
///
/// * `{{location}}/{{mirroring_endpoint_group_association_id}}`
///
/// When using the `pulumi import` command, MirroringEndpointGroupAssociation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/mirroringEndpointGroupAssociation:MirroringEndpointGroupAssociation default projects/{{project}}/locations/{{location}}/mirroringEndpointGroupAssociations/{{mirroring_endpoint_group_association_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/mirroringEndpointGroupAssociation:MirroringEndpointGroupAssociation default {{project}}/{{location}}/{{mirroring_endpoint_group_association_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/mirroringEndpointGroupAssociation:MirroringEndpointGroupAssociation default {{location}}/{{mirroring_endpoint_group_association_id}}
/// ```
class MirroringEndpointGroupAssociation2 extends CustomResource {
  /// The timestamp when the resource was created.
  /// See https://google.aip.dev/148#timestamps.
  late final Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The cloud location of the association, currently restricted to `global`.
  late final Output<String> location;

  /// The list of locations where the association is configured. This information
  /// is retrieved from the linked endpoint group.
  /// Structure is documented below.
  late final Output<List<MirroringEndpointGroupAssociationLocation>> locations;

  /// (Deprecated)
  /// The list of locations where the association is present. This information
  /// is retrieved from the linked endpoint group, and not configured as part
  /// of the association itself.
  /// Structure is documented below.
  late final Output<List<MirroringEndpointGroupAssociationLocationsDetail>>
      locationsDetails;

  /// The endpoint group that this association is connected to, for example:
  /// `projects/123456789/locations/global/mirroringEndpointGroups/my-eg`.
  /// See https://google.aip.dev/124.
  late final Output<String> mirroringEndpointGroup;

  /// The ID to use for the new association, which will become the final
  /// component of the endpoint group's resource name. If not provided, the
  /// server will generate a unique ID.
  late final Output<String?> mirroringEndpointGroupAssociationId;

  /// The resource name of this endpoint group association, for example:
  /// `projects/123456789/locations/global/mirroringEndpointGroupAssociations/my-eg-association`.
  /// See https://google.aip.dev/122 for more details.
  late final Output<String> name;

  /// The VPC network that is associated. for example:
  /// `projects/123456789/global/networks/my-network`.
  /// See https://google.aip.dev/124.
  late final Output<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The current state of the resource does not match the user's intended state,
  /// and the system is working to reconcile them. This part of the normal
  /// operation (e.g. adding a new location to the target deployment group).
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

  MirroringEndpointGroupAssociation2(
    String name, {
    MirroringEndpointGroupAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/mirroringEndpointGroupAssociation:MirroringEndpointGroupAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.locations =
        registerOutput<List<MirroringEndpointGroupAssociationLocation>>(
            'locations');
    this.locationsDetails =
        registerOutput<List<MirroringEndpointGroupAssociationLocationsDetail>>(
            'locationsDetails');
    this.mirroringEndpointGroup =
        registerOutput<String>('mirroringEndpointGroup');
    this.mirroringEndpointGroupAssociationId =
        registerOutput<String?>('mirroringEndpointGroupAssociationId');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
