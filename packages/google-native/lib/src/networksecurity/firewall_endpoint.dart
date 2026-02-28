import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_endpoint_args.dart';

/// Creates a new FirewallEndpoint in a given project and location.
/// Auto-naming is currently not supported for this resource.
class FirewallEndpoint extends pulumi.CustomResource {
  /// List of networks that are associated with this endpoint in the local zone. This is a projection of the FirewallEndpointAssociations pointing at this endpoint. A network will only appear in this list after traffic routing is fully configured. Format: projects/{project}/global/networks/{name}.
  late final pulumi.Output<List<String>> associatedNetworks;

  /// Optional. Project to bill on endpoint uptime usage.
  late final pulumi.Output<String> billingProjectId;

  /// Create time stamp
  late final pulumi.Output<String> createTime;

  /// Optional. Description of the firewall endpoint. Max length 2048 characters.
  late final pulumi.Output<String> description;

  /// Required. Id of the requesting object. If auto-generating Id server-side, remove this field and firewall_endpoint_id from the method_signature of Create RPC.
  late final pulumi.Output<String> firewallEndpointId;

  /// Optional. Labels as key value pairs
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// name of resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// Whether reconciling is in progress, recommended per https://google.aip.dev/128.
  late final pulumi.Output<bool> reconciling;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Current state of the endpoint.
  late final pulumi.Output<String> state;

  /// Update time stamp
  late final pulumi.Output<String> updateTime;

  /// Creates a new [FirewallEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallEndpoint]. {@macro pulumi_networksecurity_v1beta1_firewall_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallEndpoint(
    String name, {
    FirewallEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:networksecurity/v1beta1:FirewallEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.associatedNetworks =
        registerOutput<List<String>>('associatedNetworks');
    this.billingProjectId = registerOutput<String>('billingProjectId');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.firewallEndpointId = registerOutput<String>('firewallEndpointId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.reconciling = registerOutput<bool>('reconciling');
    this.requestId = registerOutput<String?>('requestId');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
