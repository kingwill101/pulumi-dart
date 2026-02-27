import 'package:pulumi/pulumi.dart' hide Config;
import 'hub_args2.dart';

/// Creates a new Network Connectivity Center hub in the specified project.
class Hub2 extends CustomResource {
  /// Time when the Hub was created.
  late final Output<String> createTime;

  /// Short description of the hub resource.
  late final Output<String> description;

  /// Optional. Unique id for the Hub to create.
  late final Output<String?> hubId;

  /// User-defined labels.
  late final Output<Map<String, String>> labels;

  /// Immutable. The name of a Hub resource.
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// A list of the URIs of all attached spokes. This field is deprecated and will not be included in future API versions. Call ListSpokes on each region instead.
  late final Output<List<String>> spokes;

  /// The current lifecycle state of this Hub.
  late final Output<String> state;

  /// Google-generated UUID for this resource. This is unique across all Hub resources. If a Hub resource is deleted and another with the same name is created, it gets a different unique_id.
  late final Output<String> uniqueId;

  /// Time when the Hub was updated.
  late final Output<String> updateTime;

  Hub2(
    String name, {
    HubArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:networkconnectivity/v1alpha1:Hub',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
