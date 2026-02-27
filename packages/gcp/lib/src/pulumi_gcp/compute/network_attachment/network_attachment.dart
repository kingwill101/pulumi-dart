import 'package:pulumi/pulumi.dart';
import '../network_attachment_connection_endpoint/network_attachment_connection_endpoint.dart';
import 'network_attachment_args.dart';

/// A network attachment is a resource that lets a producer Virtual Private Cloud (VPC) network initiate connections to a consumer VPC network through a Private Service Connect interface.
///
///
/// To get more information about NetworkAttachment, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/networkAttachments)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vpc/docs/about-network-attachments)
///
/// ## Example Usage
///
/// ### Network Attachment Basic
///
///
///
/// ### Network Attachment Instance Usage
///
///
///
///
/// ## Import
///
/// NetworkAttachment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/networkAttachments/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, NetworkAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkAttachment:NetworkAttachment default projects/{{project}}/regions/{{region}}/networkAttachments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkAttachment:NetworkAttachment default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkAttachment:NetworkAttachment default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkAttachment:NetworkAttachment default {{name}}
/// ```
class NetworkAttachment extends CustomResource {
  /// An array of connections for all the producers connected to this network attachment.
  /// Structure is documented below.
  late final Output<List<NetworkAttachmentConnectionEndpoint>>
      connectionEndpoints;

  /// The connection preference of service attachment. The value can be set to ACCEPT_AUTOMATIC. An ACCEPT_AUTOMATIC service attachment is one that always accepts the connection from consumer forwarding rules.
  /// Possible values are: `ACCEPT_AUTOMATIC`, `ACCEPT_MANUAL`, `INVALID`.
  late final Output<String> connectionPreference;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String?> description;

  /// Fingerprint of this resource. A hash of the contents stored in this object. This
  /// field is used in optimistic locking. An up-to-date fingerprint must be provided in order to patch.
  late final Output<String> fingerprint;

  /// Type of the resource.
  late final Output<String> kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// The URL of the network which the Network Attachment belongs to. Practically it is inferred by fetching the network of the first subnetwork associated.
  /// Because it is required that all the subnetworks must be from the same network, it is assured that the Network Attachment belongs to the same network as all the subnetworks.
  late final Output<String> network;

  /// Projects that are allowed to connect to this network attachment. The project can be specified using its id or number.
  late final Output<List<String>?> producerAcceptLists;

  /// Projects that are not allowed to connect to this network attachment. The project can be specified using its id or number.
  late final Output<List<String>?> producerRejectLists;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// URL of the region where the network attachment resides. This field applies only to the region resource. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  late final Output<String> region;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// Server-defined URL for this resource's resource id.
  late final Output<String> selfLinkWithId;

  /// An array of URLs where each entry is the URL of a subnet provided by the service consumer to use for endpoints in the producers that connect to this network attachment.
  late final Output<List<String>> subnetworks;

  NetworkAttachment(
    String name, {
    NetworkAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkAttachment:NetworkAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.connectionEndpoints =
        registerOutput<List<NetworkAttachmentConnectionEndpoint>>(
            'connectionEndpoints');
    this.connectionPreference = registerOutput<String>('connectionPreference');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.producerAcceptLists =
        registerOutput<List<String>?>('producerAcceptLists');
    this.producerRejectLists =
        registerOutput<List<String>?>('producerRejectLists');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
    this.subnetworks = registerOutput<List<String>>('subnetworks');
  }
}
