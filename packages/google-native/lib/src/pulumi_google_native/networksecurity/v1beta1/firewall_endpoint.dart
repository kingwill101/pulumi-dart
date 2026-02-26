import 'package:pulumi/pulumi.dart';
import 'firewall_endpoint_args.dart';

/// Creates a new FirewallEndpoint in a given project and location.
/// Auto-naming is currently not supported for this resource.
class FirewallEndpoint extends CustomResource {
  /// List of networks that are associated with this endpoint in the local zone. This is a projection of the FirewallEndpointAssociations pointing at this endpoint. A network will only appear in this list after traffic routing is fully configured. Format: projects/{project}/global/networks/{name}.
  late final Output<List<String>> associatedNetworks;

  /// Optional. Project to bill on endpoint uptime usage.
  late final Output<String> billingProjectId;

  /// Create time stamp
  late final Output<String> createTime;

  /// Optional. Description of the firewall endpoint. Max length 2048 characters.
  late final Output<String> description;

  /// Required. Id of the requesting object. If auto-generating Id server-side, remove this field and firewall_endpoint_id from the method_signature of Create RPC.
  late final Output<String> firewallEndpointId;

  /// Optional. Labels as key value pairs
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// name of resource
  late final Output<String> name;
  late final Output<String> organizationId;

  /// Whether reconciling is in progress, recommended per https://google.aip.dev/128.
  late final Output<bool> reconciling;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Current state of the endpoint.
  late final Output<String> state;

  /// Update time stamp
  late final Output<String> updateTime;

  FirewallEndpoint(
    String name, {
    FirewallEndpointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:networksecurity/v1beta1:FirewallEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.associatedNetworks = Output.createUnknown<List<String>>();
    this.billingProjectId = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.firewallEndpointId = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.organizationId = Output.createUnknown<String>();
    this.reconciling = Output.createUnknown<bool>();
    this.requestId = Output.createUnknown<String?>();
    this.state = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
