// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../service_attachment_consumer_accept_list/service_attachment_consumer_accept_list.dart';
import '../service_attachment_tunneling_config/service_attachment_tunneling_config.dart';

/// The set of arguments for ServiceAttachment.
class ServiceAttachmentArgs {
  /// The connection preference to use for this service attachment. Valid
  /// values include "ACCEPT_AUTOMATIC", "ACCEPT_MANUAL".
  final pulumi.Input<String> connectionPreference;

  /// An array of projects that are allowed to connect to this service
  /// attachment.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceAttachmentConsumerAcceptList>>?
      consumerAcceptLists;

  /// An array of projects that are not allowed to connect to this service
  /// attachment.
  final pulumi.Input<List<String>>? consumerRejectLists;

  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// If specified, the domain name will be used during the integration between
  /// the PSC connected endpoints and the Cloud DNS. For example, this is a
  /// valid domain name: "p.mycompany.com.". Current max number of domain names
  /// supported is 1.
  final pulumi.Input<List<String>>? domainNames;

  /// If true, enable the proxy protocol which is for supplying client TCP/IP
  /// address data in TCP connections that traverse proxies on their way to
  /// destination servers.
  final pulumi.Input<bool> enableProxyProtocol;

  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?`
  /// which means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// An array of subnets that is provided for NAT in this service attachment.
  final pulumi.Input<List<String>> natSubnets;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The number of consumer spokes that connected Private Service Connect endpoints can be propagated to through Network Connectivity Center.
  /// This limit lets the service producer limit how many propagated Private Service Connect connections can be established to this service attachment from a single consumer.
  /// If the connection preference of the service attachment is ACCEPT_MANUAL, the limit applies to each project or network that is listed in the consumer accept list.
  /// If the connection preference of the service attachment is ACCEPT_AUTOMATIC, the limit applies to each project that contains a connected endpoint.
  /// If unspecified, the default propagated connection limit is 250. To explicitly send a zero value, set `send_propagated_connection_limit_if_zero = true`.
  final pulumi.Input<int>? propagatedConnectionLimit;

  /// This flag determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints.
  /// If false, connection policy update will only affect existing PENDING PSC endpoints. Existing ACCEPTED/REJECTED endpoints will remain untouched regardless how the connection policy is modified .
  /// If true, update will affect both PENDING and ACCEPTED/REJECTED PSC endpoints. For example, an ACCEPTED PSC endpoint will be moved to REJECTED if its project is added to the reject list.
  final pulumi.Input<bool>? reconcileConnections;

  /// URL of the region where the resource resides.
  final pulumi.Input<String>? region;

  /// Controls the behavior of propagated_connection_limit.
  /// When false, setting propagated_connection_limit to zero causes the provider to use to the API's default value.
  /// When true, the provider will set propagated_connection_limit to zero.
  /// Defaults to false.
  final pulumi.Input<bool>? sendPropagatedConnectionLimitIfZero;

  /// If true, show NAT IPs of all connected endpoints.
  final pulumi.Input<bool>? showNatIps;

  /// The URL of a service serving the endpoint identified by this service attachment.
  final pulumi.Input<String> targetService;

  /// Tunneling configuration for this service attachment.
  /// Structure is documented below.
  final pulumi.Input<ServiceAttachmentTunnelingConfig>? tunnelingConfig;

  ServiceAttachmentArgs({
    required this.connectionPreference,
    this.consumerAcceptLists,
    this.consumerRejectLists,
    this.description,
    this.domainNames,
    required this.enableProxyProtocol,
    this.name,
    required this.natSubnets,
    this.project,
    this.propagatedConnectionLimit,
    this.reconcileConnections,
    this.region,
    this.sendPropagatedConnectionLimitIfZero,
    this.showNatIps,
    required this.targetService,
    this.tunnelingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionPreference'] = connectionPreference;
    final consumerAcceptListsValue = consumerAcceptLists;
    if (consumerAcceptListsValue != null) {
      map['consumerAcceptLists'] = pulumi.Input.mapOptionalInputValue<
              List<ServiceAttachmentConsumerAcceptList>,
              List<Map<String, dynamic>>>(
          consumerAcceptListsValue,
          (value) => pulumi.Input.encodeList<
              ServiceAttachmentConsumerAcceptList,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final consumerRejectListsValue = consumerRejectLists;
    if (consumerRejectListsValue != null) {
      map['consumerRejectLists'] = consumerRejectListsValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final domainNamesValue = domainNames;
    if (domainNamesValue != null) {
      map['domainNames'] = domainNamesValue;
    }
    map['enableProxyProtocol'] = enableProxyProtocol;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['natSubnets'] = natSubnets;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final propagatedConnectionLimitValue = propagatedConnectionLimit;
    if (propagatedConnectionLimitValue != null) {
      map['propagatedConnectionLimit'] = propagatedConnectionLimitValue;
    }
    final reconcileConnectionsValue = reconcileConnections;
    if (reconcileConnectionsValue != null) {
      map['reconcileConnections'] = reconcileConnectionsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sendPropagatedConnectionLimitIfZeroValue =
        sendPropagatedConnectionLimitIfZero;
    if (sendPropagatedConnectionLimitIfZeroValue != null) {
      map['sendPropagatedConnectionLimitIfZero'] =
          sendPropagatedConnectionLimitIfZeroValue;
    }
    final showNatIpsValue = showNatIps;
    if (showNatIpsValue != null) {
      map['showNatIps'] = showNatIpsValue;
    }
    map['targetService'] = targetService;
    final tunnelingConfigValue = tunnelingConfig;
    if (tunnelingConfigValue != null) {
      map['tunnelingConfig'] = pulumi.Input.mapOptionalInputValue<
          ServiceAttachmentTunnelingConfig,
          Map<String, dynamic>>(tunnelingConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ServiceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ServiceAttachmentArgs(
      connectionPreference:
          pulumi.Input.asInput<String>(map['connectionPreference']),
      consumerAcceptLists: pulumi.Input.asOptionalInput<
              List<ServiceAttachmentConsumerAcceptList>>(
          map['consumerAcceptLists']),
      consumerRejectLists: pulumi.Input.asOptionalInput<List<String>>(
          map['consumerRejectLists']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      domainNames:
          pulumi.Input.asOptionalInput<List<String>>(map['domainNames']),
      enableProxyProtocol:
          pulumi.Input.asInput<bool>(map['enableProxyProtocol']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      natSubnets: pulumi.Input.asInput<List<String>>(map['natSubnets']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      propagatedConnectionLimit:
          pulumi.Input.asOptionalInput<int>(map['propagatedConnectionLimit']),
      reconcileConnections:
          pulumi.Input.asOptionalInput<bool>(map['reconcileConnections']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sendPropagatedConnectionLimitIfZero: pulumi.Input.asOptionalInput<bool>(
          map['sendPropagatedConnectionLimitIfZero']),
      showNatIps: pulumi.Input.asOptionalInput<bool>(map['showNatIps']),
      targetService: pulumi.Input.asInput<String>(map['targetService']),
      tunnelingConfig:
          pulumi.Input.asOptionalInput<ServiceAttachmentTunnelingConfig>(
              map['tunnelingConfig']),
    );
  }
}
