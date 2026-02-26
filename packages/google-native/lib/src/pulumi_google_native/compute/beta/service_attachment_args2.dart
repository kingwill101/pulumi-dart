// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'service_attachment_connection_preference2.dart';
import 'service_attachment_consumer_project_limit2.dart';
import 'service_attachment_tunneling_config2.dart';

/// The set of arguments for ServiceAttachment.
class ServiceAttachmentArgs2 {
  /// The connection preference of service attachment. The value can be set to ACCEPT_AUTOMATIC. An ACCEPT_AUTOMATIC service attachment is one that always accepts the connection from consumer forwarding rules.
  final Input<ServiceAttachmentConnectionPreference2>? connectionPreference;

  /// Projects that are allowed to connect to this service attachment.
  final Input<List<ServiceAttachmentConsumerProjectLimit2>>?
      consumerAcceptLists;

  /// Projects that are not allowed to connect to this service attachment. The project can be specified using its id or number.
  final Input<List<String>>? consumerRejectLists;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// If specified, the domain name will be used during the integration between the PSC connected endpoints and the Cloud DNS. For example, this is a valid domain name: "p.mycompany.com.". Current max number of domain names supported is 1.
  final Input<List<String>>? domainNames;

  /// If true, enable the proxy protocol which is for supplying client TCP/IP address data in TCP connections that traverse proxies on their way to destination servers.
  final Input<bool>? enableProxyProtocol;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// An array of URLs where each entry is the URL of a subnet provided by the service producer to use for NAT in this service attachment.
  final Input<List<String>>? natSubnets;

  /// The URL of a forwarding rule with loadBalancingScheme INTERNAL* that is serving the endpoint identified by this service attachment.
  final Input<String>? producerForwardingRule;
  final Input<String>? project;

  /// This flag determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints. - If false, connection policy update will only affect existing PENDING PSC endpoints. Existing ACCEPTED/REJECTED endpoints will remain untouched regardless how the connection policy is modified . - If true, update will affect both PENDING and ACCEPTED/REJECTED PSC endpoints. For example, an ACCEPTED PSC endpoint will be moved to REJECTED if its project is added to the reject list. For newly created service attachment, this boolean defaults to false.
  final Input<bool>? reconcileConnections;
  final Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// The URL of a service serving the endpoint identified by this service attachment.
  final Input<String>? targetService;

  /// When a tunneling config is set on this service attachment it will encapsulate traffic between consumer and producer. When tunneling is enabled: - nat_subnets must be unset - enable_proxy_protocol must be false - producer_forwarding_rule must be a L4 ILB. -
  final Input<ServiceAttachmentTunnelingConfig2>? tunnelingConfig;

  ServiceAttachmentArgs2({
    this.connectionPreference,
    this.consumerAcceptLists,
    this.consumerRejectLists,
    this.description,
    this.domainNames,
    this.enableProxyProtocol,
    this.name,
    this.natSubnets,
    this.producerForwardingRule,
    this.project,
    this.reconcileConnections,
    required this.region,
    this.requestId,
    this.targetService,
    this.tunnelingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionPreferenceValue = connectionPreference;
    if (connectionPreferenceValue != null) {
      map['connectionPreference'] = Input.mapOptionalInputValue<
          ServiceAttachmentConnectionPreference2,
          String>(connectionPreferenceValue, (value) => value.value);
    }
    final consumerAcceptListsValue = consumerAcceptLists;
    if (consumerAcceptListsValue != null) {
      map['consumerAcceptLists'] = Input.mapOptionalInputValue<
              List<ServiceAttachmentConsumerProjectLimit2>,
              List<Map<String, dynamic>>>(
          consumerAcceptListsValue,
          (value) => Input.encodeList<ServiceAttachmentConsumerProjectLimit2,
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
    final enableProxyProtocolValue = enableProxyProtocol;
    if (enableProxyProtocolValue != null) {
      map['enableProxyProtocol'] = enableProxyProtocolValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final natSubnetsValue = natSubnets;
    if (natSubnetsValue != null) {
      map['natSubnets'] = natSubnetsValue;
    }
    final producerForwardingRuleValue = producerForwardingRule;
    if (producerForwardingRuleValue != null) {
      map['producerForwardingRule'] = producerForwardingRuleValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final reconcileConnectionsValue = reconcileConnections;
    if (reconcileConnectionsValue != null) {
      map['reconcileConnections'] = reconcileConnectionsValue;
    }
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final targetServiceValue = targetService;
    if (targetServiceValue != null) {
      map['targetService'] = targetServiceValue;
    }
    final tunnelingConfigValue = tunnelingConfig;
    if (tunnelingConfigValue != null) {
      map['tunnelingConfig'] = Input.mapOptionalInputValue<
          ServiceAttachmentTunnelingConfig2,
          Map<String, dynamic>>(tunnelingConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ServiceAttachmentArgs2.fromMap(Map<String, dynamic> map) {
    return ServiceAttachmentArgs2(
      connectionPreference:
          Input.asOptionalInput<ServiceAttachmentConnectionPreference2>(
              map['connectionPreference']),
      consumerAcceptLists:
          Input.asOptionalInput<List<ServiceAttachmentConsumerProjectLimit2>>(
              map['consumerAcceptLists']),
      consumerRejectLists:
          Input.asOptionalInput<List<String>>(map['consumerRejectLists']),
      description: Input.asOptionalInput<String>(map['description']),
      domainNames: Input.asOptionalInput<List<String>>(map['domainNames']),
      enableProxyProtocol:
          Input.asOptionalInput<bool>(map['enableProxyProtocol']),
      name: Input.asOptionalInput<String>(map['name']),
      natSubnets: Input.asOptionalInput<List<String>>(map['natSubnets']),
      producerForwardingRule:
          Input.asOptionalInput<String>(map['producerForwardingRule']),
      project: Input.asOptionalInput<String>(map['project']),
      reconcileConnections:
          Input.asOptionalInput<bool>(map['reconcileConnections']),
      region: Input.asInput<String>(map['region']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      targetService: Input.asOptionalInput<String>(map['targetService']),
      tunnelingConfig: Input.asOptionalInput<ServiceAttachmentTunnelingConfig2>(
          map['tunnelingConfig']),
    );
  }
}
