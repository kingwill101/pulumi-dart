import 'package:pulumi/pulumi.dart';
import '../intercept_endpoint_group_association_location/intercept_endpoint_group_association_location.dart';
import '../intercept_endpoint_group_association_locations_detail/intercept_endpoint_group_association_locations_detail.dart';
import 'intercept_endpoint_group_association_args.dart';

/// An endpoint group association represents a link between a network and an
/// endpoint group in the organization.
///
/// Creating an association creates the networking infrastructure linking the
/// network to the endpoint group, but does not enable intercept by itself.
/// To enable intercept, the user must also create a network firewall policy
/// containing intercept rules and associate it with the network.
///
///
///
/// ## Example Usage
///
/// ### Network Security Intercept Endpoint Group Association Basic
///
///
///
///
/// ## Import
///
/// InterceptEndpointGroupAssociation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/interceptEndpointGroupAssociations/{{intercept_endpoint_group_association_id}}`
///
/// * `{{project}}/{{location}}/{{intercept_endpoint_group_association_id}}`
///
/// * `{{location}}/{{intercept_endpoint_group_association_id}}`
///
/// When using the `pulumi import` command, InterceptEndpointGroupAssociation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/interceptEndpointGroupAssociation:InterceptEndpointGroupAssociation default projects/{{project}}/locations/{{location}}/interceptEndpointGroupAssociations/{{intercept_endpoint_group_association_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/interceptEndpointGroupAssociation:InterceptEndpointGroupAssociation default {{project}}/{{location}}/{{intercept_endpoint_group_association_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/interceptEndpointGroupAssociation:InterceptEndpointGroupAssociation default {{location}}/{{intercept_endpoint_group_association_id}}
/// ```
class InterceptEndpointGroupAssociation2 extends CustomResource {
  /// The timestamp when the resource was created.
  /// See https://google.aip.dev/148#timestamps.
  late final Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The endpoint group that this association is connected to, for example:
  /// `projects/123456789/locations/global/interceptEndpointGroups/my-eg`.
  /// See https://google.aip.dev/124.
  late final Output<String> interceptEndpointGroup;

  /// The ID to use for the new association, which will become the final
  /// component of the endpoint group's resource name. If not provided, the
  /// server will generate a unique ID.
  late final Output<String?> interceptEndpointGroupAssociationId;

  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The cloud location of the association, currently restricted to `global`.
  late final Output<String> location;

  /// The list of locations where the association is configured. This information
  /// is retrieved from the linked endpoint group.
  /// Structure is documented below.
  late final Output<List<InterceptEndpointGroupAssociationLocation>> locations;

  /// (Deprecated)
  /// The list of locations where the association is present. This information
  /// is retrieved from the linked endpoint group, and not configured as part
  /// of the association itself.
  /// Structure is documented below.
  late final Output<List<InterceptEndpointGroupAssociationLocationsDetail>>
      locationsDetails;

  /// The resource name of this endpoint group association, for example:
  /// `projects/123456789/locations/global/interceptEndpointGroupAssociations/my-eg-association`.
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

  InterceptEndpointGroupAssociation2(
    String name, {
    InterceptEndpointGroupAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/interceptEndpointGroupAssociation:InterceptEndpointGroupAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.interceptEndpointGroup =
        registerOutput<String>('interceptEndpointGroup');
    this.interceptEndpointGroupAssociationId =
        registerOutput<String?>('interceptEndpointGroupAssociationId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.locations =
        registerOutput<List<InterceptEndpointGroupAssociationLocation>>(
            'locations');
    this.locationsDetails =
        registerOutput<List<InterceptEndpointGroupAssociationLocationsDetail>>(
            'locationsDetails');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
