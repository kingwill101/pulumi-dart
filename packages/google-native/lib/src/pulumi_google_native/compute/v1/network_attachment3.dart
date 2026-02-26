import 'package:pulumi/pulumi.dart';
import 'network_attachment_args3.dart';
import 'network_attachment_connected_endpoint_response3.dart';

/// Creates a NetworkAttachment in the specified project in the given scope using the parameters that are included in the request.
class NetworkAttachment3 extends CustomResource {
  /// An array of connections for all the producers connected to this network attachment.
  late final Output<List<NetworkAttachmentConnectedEndpointResponse3>>
      connectionEndpoints;
  late final Output<String> connectionPreference;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String> description;

  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. An up-to-date fingerprint must be provided in order to patch.
  late final Output<String> fingerprint;

  /// Type of the resource.
  late final Output<String> kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// The URL of the network which the Network Attachment belongs to. Practically it is inferred by fetching the network of the first subnetwork associated. Because it is required that all the subnetworks must be from the same network, it is assured that the Network Attachment belongs to the same network as all the subnetworks.
  late final Output<String> network;

  /// Projects that are allowed to connect to this network attachment. The project can be specified using its id or number.
  late final Output<List<String>> producerAcceptLists;

  /// Projects that are not allowed to connect to this network attachment. The project can be specified using its id or number.
  late final Output<List<String>> producerRejectLists;
  late final Output<String> project;
  late final Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000). end_interface: MixerMutationRequestBuilder
  late final Output<String?> requestId;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// Server-defined URL for this resource's resource id.
  late final Output<String> selfLinkWithId;

  /// An array of URLs where each entry is the URL of a subnet provided by the service consumer to use for endpoints in the producers that connect to this network attachment.
  late final Output<List<String>> subnetworks;

  NetworkAttachment3(
    String name, {
    NetworkAttachmentArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/v1:NetworkAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.connectionEndpoints =
        registerOutput<List<NetworkAttachmentConnectedEndpointResponse3>>(
            'connectionEndpoints');
    this.connectionPreference = registerOutput<String>('connectionPreference');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.producerAcceptLists =
        registerOutput<List<String>>('producerAcceptLists');
    this.producerRejectLists =
        registerOutput<List<String>>('producerRejectLists');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.requestId = registerOutput<String?>('requestId');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
    this.subnetworks = registerOutput<List<String>>('subnetworks');
  }
}
