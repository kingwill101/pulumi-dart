import 'package:pulumi/pulumi.dart' as pulumi;
import 'mirroring_endpoint_args.dart';

/// An endpoint is a managed mirroring collector that provides enhanced packet
/// enrichment capabilities and support for multiple replica destinations.
/// Endpoints are always part of a global endpoint group which represents a
/// global "mirroring broker" service.
///
///
/// ## Example Usage
///
/// ### Network Security Mirroring Endpoint Basic
///
///
///
///
/// ## Import
///
/// MirroringEndpoint can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/mirroringEndpoints/{{mirroring_endpoint_id}}`
///
/// * `{{project}}/{{location}}/{{mirroring_endpoint_id}}`
///
/// * `{{location}}/{{mirroring_endpoint_id}}`
///
/// When using the `pulumi import` command, MirroringEndpoint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/mirroringEndpoint:MirroringEndpoint default projects/{{project}}/locations/{{location}}/mirroringEndpoints/{{mirroring_endpoint_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/mirroringEndpoint:MirroringEndpoint default {{project}}/{{location}}/{{mirroring_endpoint_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/mirroringEndpoint:MirroringEndpoint default {{location}}/{{mirroring_endpoint_id}}
/// ```
class MirroringEndpoint extends pulumi.CustomResource {
  /// The timestamp when the resource was created.
  /// See https://google.aip.dev/148#timestamps.
  late final pulumi.Output<String> createTime;

  /// User-provided description of the endpoint.
  /// Used as additional context for the endpoint.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The cloud location of the endpoint, e.g. `us-central1-a` or `asia-south1-b`.
  late final pulumi.Output<String> location;

  /// The endpoint group that this endpoint belongs to.
  /// Format is:
  /// `projects/{project}/locations/{location}/mirroringEndpointGroups/{mirroringEndpointGroup}`
  late final pulumi.Output<String> mirroringEndpointGroup;

  /// The ID to use for the new endpoint, which will become the final
  /// component of the endpoint's resource name.
  late final pulumi.Output<String> mirroringEndpointId;

  /// The resource name of this endpoint, for example:
  /// `projects/123456789/locations/us-central1-a/mirroringEndpoints/my-endpoint`.
  /// See https://google.aip.dev/122 for more details.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The current state of the resource does not match the user's intended state,
  /// and the system is working to reconcile them. This part of the normal
  /// operation (e.g. linking a new association to the parent group).
  /// See https://google.aip.dev/128.
  late final pulumi.Output<bool> reconciling;

  /// The current state of the endpoint.
  /// See https://google.aip.dev/216.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// CREATING
  /// ACTIVE
  /// DELETING
  /// DELETE_FAILED
  /// OUT_OF_SYNC
  late final pulumi.Output<String> state;

  /// The timestamp when the resource was most recently updated.
  /// See https://google.aip.dev/148#timestamps.
  late final pulumi.Output<String> updateTime;

  MirroringEndpoint(
    String name, {
    MirroringEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/mirroringEndpoint:MirroringEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.mirroringEndpointGroup =
        registerOutput<String>('mirroringEndpointGroup');
    this.mirroringEndpointId = registerOutput<String>('mirroringEndpointId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
