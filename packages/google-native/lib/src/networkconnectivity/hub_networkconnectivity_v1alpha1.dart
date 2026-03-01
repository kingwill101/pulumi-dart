import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_networkconnectivity_v1alpha1_args.dart';

/// Creates a new Network Connectivity Center hub in the specified project.
class HubNetworkconnectivityV1alpha1 extends pulumi.CustomResource {
  /// Time when the Hub was created.
  late final pulumi.Output<String> createTime;

  /// Short description of the hub resource.
  late final pulumi.Output<String> description;

  /// Optional. Unique id for the Hub to create.
  late final pulumi.Output<String?> hubId;

  /// User-defined labels.
  late final pulumi.Output<Map<String, String>> labels;

  /// Immutable. The name of a Hub resource.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// A list of the URIs of all attached spokes. This field is deprecated and will not be included in future API versions. Call ListSpokes on each region instead.
  late final pulumi.Output<List<String>> spokes;

  /// The current lifecycle state of this Hub.
  late final pulumi.Output<String> state;

  /// Google-generated UUID for this resource. This is unique across all Hub resources. If a Hub resource is deleted and another with the same name is created, it gets a different unique_id.
  late final pulumi.Output<String> uniqueId;

  /// Time when the Hub was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [HubNetworkconnectivityV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HubNetworkconnectivityV1alpha1]. {@macro pulumi_networkconnectivity_v1alpha1_hub_networkconnectivity_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HubNetworkconnectivityV1alpha1(
    String name, {
    HubNetworkconnectivityV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:networkconnectivity/v1alpha1:Hub',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.hubId = registerOutput<String?>('hubId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.spokes = registerOutput<List<String>>('spokes');
    this.state = registerOutput<String>('state');
    this.uniqueId = registerOutput<String>('uniqueId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
