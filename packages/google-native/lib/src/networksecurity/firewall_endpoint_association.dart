import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_endpoint_association_args.dart';

/// Creates a new FirewallEndpointAssociation in a given project and location.
/// Auto-naming is currently not supported for this resource.
class FirewallEndpointAssociation extends pulumi.CustomResource {
  /// Create time stamp
  late final pulumi.Output<String> createTime;
  /// The URL of the FirewallEndpoint that is being associated.
  late final pulumi.Output<String> firewallEndpoint;
  /// Optional. Id of the requesting object. If auto-generating Id server-side, remove this field and firewall_endpoint_association_id from the method_signature of Create RPC.
  late final pulumi.Output<String?> firewallEndpointAssociationId;
  /// Optional. Labels as key value pairs
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// name of resource
  late final pulumi.Output<String> name;
  /// The URL of the network that is being associated.
  late final pulumi.Output<String> network;
  late final pulumi.Output<String> project;
  /// Whether reconciling is in progress, recommended per https://google.aip.dev/128.
  late final pulumi.Output<bool> reconciling;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// Current state of the association.
  late final pulumi.Output<String> state;
  /// Optional. The URL of the TlsInspectionPolicy that is being associated.
  late final pulumi.Output<String> tlsInspectionPolicy;
  /// Update time stamp
  late final pulumi.Output<String> updateTime;

  /// Creates a new [FirewallEndpointAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallEndpointAssociation]. {@macro pulumi_networksecurity_v1beta1_firewall_endpoint_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallEndpointAssociation(
    String name, {
    FirewallEndpointAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:networksecurity/v1beta1:FirewallEndpointAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.firewallEndpoint = registerOutput<String>('firewallEndpoint');
    this.firewallEndpointAssociationId = registerOutput<String?>('firewallEndpointAssociationId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.requestId = registerOutput<String?>('requestId');
    this.state = registerOutput<String>('state');
    this.tlsInspectionPolicy = registerOutput<String>('tlsInspectionPolicy');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
