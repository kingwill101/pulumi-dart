import 'package:pulumi/pulumi.dart';
import '../service_attachment_connected_endpoint/service_attachment_connected_endpoint.dart';
import '../service_attachment_consumer_accept_list/service_attachment_consumer_accept_list.dart';
import '../service_attachment_psc_service_attachment_id/service_attachment_psc_service_attachment_id.dart';
import '../service_attachment_tunneling_config/service_attachment_tunneling_config.dart';
import 'service_attachment_args.dart';

/// Represents a ServiceAttachment resource.
///
///
/// To get more information about ServiceAttachment, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/beta/serviceAttachments)
/// * How-to Guides
/// * [Configuring Private Service Connect to access services](https://cloud.google.com/vpc/docs/configure-private-service-connect-services)
///
/// ## Example Usage
///
/// ### Service Attachment Basic
///
///
///
/// ### Service Attachment Explicit Projects
///
///
///
/// ### Service Attachment Explicit Networks
///
///
///
/// ### Service Attachment Reconcile Connections
///
///
///
/// ### Service Attachment Tunneling Config
///
///
///
/// ### Service Attachment Cross Region Ilb
///
///
///
///
/// ## Import
///
/// ServiceAttachment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/serviceAttachments/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ServiceAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/serviceAttachment:ServiceAttachment default projects/{{project}}/regions/{{region}}/serviceAttachments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/serviceAttachment:ServiceAttachment default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/serviceAttachment:ServiceAttachment default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/serviceAttachment:ServiceAttachment default {{name}}
/// ```
class ServiceAttachment extends CustomResource {
  /// An array of the consumer forwarding rules connected to this service
  /// attachment.
  /// Structure is documented below.
  late final Output<List<ServiceAttachmentConnectedEndpoint>>
      connectedEndpoints;

  /// The connection preference to use for this service attachment. Valid
  /// values include "ACCEPT_AUTOMATIC", "ACCEPT_MANUAL".
  late final Output<String> connectionPreference;

  /// An array of projects that are allowed to connect to this service
  /// attachment.
  /// Structure is documented below.
  late final Output<List<ServiceAttachmentConsumerAcceptList>?>
      consumerAcceptLists;

  /// An array of projects that are not allowed to connect to this service
  /// attachment.
  late final Output<List<String>?> consumerRejectLists;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// If specified, the domain name will be used during the integration between
  /// the PSC connected endpoints and the Cloud DNS. For example, this is a
  /// valid domain name: "p.mycompany.com.". Current max number of domain names
  /// supported is 1.
  late final Output<List<String>?> domainNames;

  /// If true, enable the proxy protocol which is for supplying client TCP/IP
  /// address data in TCP connections that traverse proxies on their way to
  /// destination servers.
  late final Output<bool> enableProxyProtocol;

  /// Fingerprint of this resource. This field is used internally during
  /// updates of this resource.
  late final Output<String> fingerprint;

  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?`
  /// which means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  late final Output<String> name;

  /// An array of subnets that is provided for NAT in this service attachment.
  late final Output<List<String>> natSubnets;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The number of consumer spokes that connected Private Service Connect endpoints can be propagated to through Network Connectivity Center.
  /// This limit lets the service producer limit how many propagated Private Service Connect connections can be established to this service attachment from a single consumer.
  /// If the connection preference of the service attachment is ACCEPT_MANUAL, the limit applies to each project or network that is listed in the consumer accept list.
  /// If the connection preference of the service attachment is ACCEPT_AUTOMATIC, the limit applies to each project that contains a connected endpoint.
  /// If unspecified, the default propagated connection limit is 250. To explicitly send a zero value, set `send_propagated_connection_limit_if_zero = true`.
  late final Output<int> propagatedConnectionLimit;

  /// An 128-bit global unique ID of the PSC service attachment.
  /// Structure is documented below.
  late final Output<List<ServiceAttachmentPscServiceAttachmentId>>
      pscServiceAttachmentIds;

  /// This flag determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints.
  /// If false, connection policy update will only affect existing PENDING PSC endpoints. Existing ACCEPTED/REJECTED endpoints will remain untouched regardless how the connection policy is modified .
  /// If true, update will affect both PENDING and ACCEPTED/REJECTED PSC endpoints. For example, an ACCEPTED PSC endpoint will be moved to REJECTED if its project is added to the reject list.
  late final Output<bool> reconcileConnections;

  /// URL of the region where the resource resides.
  late final Output<String> region;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// Controls the behavior of propagated_connection_limit.
  /// When false, setting propagated_connection_limit to zero causes the provider to use to the API's default value.
  /// When true, the provider will set propagated_connection_limit to zero.
  /// Defaults to false.
  late final Output<bool?> sendPropagatedConnectionLimitIfZero;

  /// If true, show NAT IPs of all connected endpoints.
  late final Output<bool?> showNatIps;

  /// The URL of a service serving the endpoint identified by this service attachment.
  late final Output<String> targetService;

  /// Tunneling configuration for this service attachment.
  /// Structure is documented below.
  late final Output<ServiceAttachmentTunnelingConfig?> tunnelingConfig;

  ServiceAttachment(
    String name, {
    ServiceAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/serviceAttachment:ServiceAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.connectedEndpoints =
        registerOutput<List<ServiceAttachmentConnectedEndpoint>>(
            'connectedEndpoints');
    this.connectionPreference = registerOutput<String>('connectionPreference');
    this.consumerAcceptLists =
        registerOutput<List<ServiceAttachmentConsumerAcceptList>?>(
            'consumerAcceptLists');
    this.consumerRejectLists =
        registerOutput<List<String>?>('consumerRejectLists');
    this.description = registerOutput<String?>('description');
    this.domainNames = registerOutput<List<String>?>('domainNames');
    this.enableProxyProtocol = registerOutput<bool>('enableProxyProtocol');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    this.natSubnets = registerOutput<List<String>>('natSubnets');
    this.project = registerOutput<String>('project');
    this.propagatedConnectionLimit =
        registerOutput<int>('propagatedConnectionLimit');
    this.pscServiceAttachmentIds =
        registerOutput<List<ServiceAttachmentPscServiceAttachmentId>>(
            'pscServiceAttachmentIds');
    this.reconcileConnections = registerOutput<bool>('reconcileConnections');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
    this.sendPropagatedConnectionLimitIfZero =
        registerOutput<bool?>('sendPropagatedConnectionLimitIfZero');
    this.showNatIps = registerOutput<bool?>('showNatIps');
    this.targetService = registerOutput<String>('targetService');
    this.tunnelingConfig =
        registerOutput<ServiceAttachmentTunnelingConfig?>('tunnelingConfig');
  }
}
