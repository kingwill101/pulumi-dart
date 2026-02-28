import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_appliance_instance_response_networkconnectivity_v1alpha1.dart';
import 'spoke_networkconnectivity_v1alpha1_args.dart';

/// Creates a Network Connectivity Center spoke.
class SpokeNetworkconnectivityV1alpha1 extends pulumi.CustomResource {
  /// The time when the Spoke was created.
  late final pulumi.Output<String> createTime;

  /// Short description of the spoke resource
  late final pulumi.Output<String> description;

  /// The resource URL of the hub resource that the spoke is attached to
  late final pulumi.Output<String> hub;

  /// User-defined labels.
  late final pulumi.Output<Map<String, String>> labels;

  /// The URIs of linked interconnect attachment resources
  late final pulumi.Output<List<String>> linkedInterconnectAttachments;

  /// The URIs of linked Router appliance resources
  late final pulumi
      .Output<List<RouterApplianceInstanceResponseNetworkconnectivityV1alpha1>>
      linkedRouterApplianceInstances;

  /// The URIs of linked VPN tunnel resources
  late final pulumi.Output<List<String>> linkedVpnTunnels;
  late final pulumi.Output<String> location;

  /// Immutable. The name of a Spoke resource.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Optional. Unique id for the Spoke to create.
  late final pulumi.Output<String?> spokeId;

  /// The current lifecycle state of this Hub.
  late final pulumi.Output<String> state;

  /// Google-generated UUID for this resource. This is unique across all Spoke resources. If a Spoke resource is deleted and another with the same name is created, it gets a different unique_id.
  late final pulumi.Output<String> uniqueId;

  /// The time when the Spoke was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [SpokeNetworkconnectivityV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpokeNetworkconnectivityV1alpha1]. {@macro pulumi_networkconnectivity_v1alpha1_spoke_networkconnectivity_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpokeNetworkconnectivityV1alpha1(
    String name, {
    SpokeNetworkconnectivityV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:networkconnectivity/v1alpha1:Spoke',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.hub = registerOutput<String>('hub');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.linkedInterconnectAttachments =
        registerOutput<List<String>>('linkedInterconnectAttachments');
    this.linkedRouterApplianceInstances = registerOutput<
            List<RouterApplianceInstanceResponseNetworkconnectivityV1alpha1>>(
        'linkedRouterApplianceInstances');
    this.linkedVpnTunnels = registerOutput<List<String>>('linkedVpnTunnels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.spokeId = registerOutput<String?>('spokeId');
    this.state = registerOutput<String>('state');
    this.uniqueId = registerOutput<String>('uniqueId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
