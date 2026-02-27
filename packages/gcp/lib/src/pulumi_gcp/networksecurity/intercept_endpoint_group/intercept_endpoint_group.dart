import 'package:pulumi/pulumi.dart' as pulumi;
import '../intercept_endpoint_group_association/intercept_endpoint_group_association.dart';
import '../intercept_endpoint_group_connected_deployment_group/intercept_endpoint_group_connected_deployment_group.dart';
import 'intercept_endpoint_group_args.dart';

/// An endpoint group is a consumer frontend for a deployment group (backend).
/// In order to configure intercept for a network, consumers must create:
/// - An association between their network and the endpoint group.
/// - A security profile that points to the endpoint group.
/// - A firewall rule that references the security profile (group).
///
///
///
/// ## Example Usage
///
/// ### Network Security Intercept Endpoint Group Basic
///
///
///
///
/// ## Import
///
/// InterceptEndpointGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/interceptEndpointGroups/{{intercept_endpoint_group_id}}`
///
/// * `{{project}}/{{location}}/{{intercept_endpoint_group_id}}`
///
/// * `{{location}}/{{intercept_endpoint_group_id}}`
///
/// When using the `pulumi import` command, InterceptEndpointGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/interceptEndpointGroup:InterceptEndpointGroup default projects/{{project}}/locations/{{location}}/interceptEndpointGroups/{{intercept_endpoint_group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/interceptEndpointGroup:InterceptEndpointGroup default {{project}}/{{location}}/{{intercept_endpoint_group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/interceptEndpointGroup:InterceptEndpointGroup default {{location}}/{{intercept_endpoint_group_id}}
/// ```
class InterceptEndpointGroup extends pulumi.CustomResource {
  /// List of associations to this endpoint group.
  /// Structure is documented below.
  late final pulumi.Output<List<InterceptEndpointGroupAssociation>>
      associations;

  /// The endpoint group's view of a connected deployment group.
  /// Structure is documented below.
  late final pulumi.Output<List<InterceptEndpointGroupConnectedDeploymentGroup>>
      connectedDeploymentGroups;

  /// The timestamp when the resource was created.
  /// See https://google.aip.dev/148#timestamps.
  late final pulumi.Output<String> createTime;

  /// User-provided description of the endpoint group.
  /// Used as additional context for the endpoint group.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The deployment group that this endpoint group is connected to, for example:
  /// `projects/123456789/locations/global/interceptDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  late final pulumi.Output<String> interceptDeploymentGroup;

  /// The ID to use for the endpoint group, which will become the final component
  /// of the endpoint group's resource name.
  late final pulumi.Output<String> interceptEndpointGroupId;

  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The cloud location of the endpoint group, currently restricted to `global`.
  late final pulumi.Output<String> location;

  /// (Output)
  /// The connected deployment group's resource name, for example:
  /// `projects/123456789/locations/global/interceptDeploymentGroups/my-dg`.
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

  /// The timestamp when the resource was most recently updated.
  /// See https://google.aip.dev/148#timestamps.
  late final pulumi.Output<String> updateTime;

  InterceptEndpointGroup(
    String name, {
    InterceptEndpointGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/interceptEndpointGroup:InterceptEndpointGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.associations =
        registerOutput<List<InterceptEndpointGroupAssociation>>('associations');
    this.connectedDeploymentGroups =
        registerOutput<List<InterceptEndpointGroupConnectedDeploymentGroup>>(
            'connectedDeploymentGroups');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.interceptDeploymentGroup =
        registerOutput<String>('interceptDeploymentGroup');
    this.interceptEndpointGroupId =
        registerOutput<String>('interceptEndpointGroupId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
