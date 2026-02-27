// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_attachment_connected_endpoint_response_compute_beta.dart';
import 'service_attachment_consumer_project_limit_response_compute_beta.dart';
import 'service_attachment_tunneling_config_response_compute_beta.dart';
import 'uint128_response_compute_beta.dart';

/// Result data returned by getServiceAttachment.
class GetServiceAttachmentComputeBetaResult {
  /// An array of connections for all the consumers connected to this service attachment.
  final List<ServiceAttachmentConnectedEndpointResponseComputeBeta>
      connectedEndpoints;

  /// The connection preference of service attachment. The value can be set to ACCEPT_AUTOMATIC. An ACCEPT_AUTOMATIC service attachment is one that always accepts the connection from consumer forwarding rules.
  final String connectionPreference;

  /// Projects that are allowed to connect to this service attachment.
  final List<ServiceAttachmentConsumerProjectLimitResponseComputeBeta>
      consumerAcceptLists;

  /// Projects that are not allowed to connect to this service attachment. The project can be specified using its id or number.
  final List<String> consumerRejectLists;

  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;

  /// If specified, the domain name will be used during the integration between the PSC connected endpoints and the Cloud DNS. For example, this is a valid domain name: "p.mycompany.com.". Current max number of domain names supported is 1.
  final List<String> domainNames;

  /// If true, enable the proxy protocol which is for supplying client TCP/IP address data in TCP connections that traverse proxies on their way to destination servers.
  final bool enableProxyProtocol;

  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a ServiceAttachment. An up-to-date fingerprint must be provided in order to patch/update the ServiceAttachment; otherwise, the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve the ServiceAttachment.
  final String fingerprint;

  /// Type of the resource. Always compute#serviceAttachment for service attachments.
  final String kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;

  /// An array of URLs where each entry is the URL of a subnet provided by the service producer to use for NAT in this service attachment.
  final List<String> natSubnets;

  /// The URL of a forwarding rule with loadBalancingScheme INTERNAL* that is serving the endpoint identified by this service attachment.
  final String producerForwardingRule;

  /// An 128-bit global unique ID of the PSC service attachment.
  final Uint128ResponseComputeBeta pscServiceAttachmentId;

  /// This flag determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints. - If false, connection policy update will only affect existing PENDING PSC endpoints. Existing ACCEPTED/REJECTED endpoints will remain untouched regardless how the connection policy is modified . - If true, update will affect both PENDING and ACCEPTED/REJECTED PSC endpoints. For example, an ACCEPTED PSC endpoint will be moved to REJECTED if its project is added to the reject list. For newly created service attachment, this boolean defaults to false.
  final bool reconcileConnections;

  /// URL of the region where the service attachment resides. This field applies only to the region resource. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  final String region;

  /// Server-defined URL for the resource.
  final String selfLink;

  /// The URL of a service serving the endpoint identified by this service attachment.
  final String targetService;

  /// When a tunneling config is set on this service attachment it will encapsulate traffic between consumer and producer. When tunneling is enabled: - nat_subnets must be unset - enable_proxy_protocol must be false - producer_forwarding_rule must be a L4 ILB. -
  final ServiceAttachmentTunnelingConfigResponseComputeBeta tunnelingConfig;

  GetServiceAttachmentComputeBetaResult({
    required this.connectedEndpoints,
    required this.connectionPreference,
    required this.consumerAcceptLists,
    required this.consumerRejectLists,
    required this.creationTimestamp,
    required this.description,
    required this.domainNames,
    required this.enableProxyProtocol,
    required this.fingerprint,
    required this.kind,
    required this.name,
    required this.natSubnets,
    required this.producerForwardingRule,
    required this.pscServiceAttachmentId,
    required this.reconcileConnections,
    required this.region,
    required this.selfLink,
    required this.targetService,
    required this.tunnelingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectedEndpoints'] = pulumi.Input.encodeList<
        ServiceAttachmentConnectedEndpointResponseComputeBeta,
        Map<String, dynamic>>(connectedEndpoints, (value) => value.toMap());
    map['connectionPreference'] = connectionPreference;
    map['consumerAcceptLists'] = pulumi.Input.encodeList<
        ServiceAttachmentConsumerProjectLimitResponseComputeBeta,
        Map<String, dynamic>>(consumerAcceptLists, (value) => value.toMap());
    map['consumerRejectLists'] = consumerRejectLists;
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['domainNames'] = domainNames;
    map['enableProxyProtocol'] = enableProxyProtocol;
    map['fingerprint'] = fingerprint;
    map['kind'] = kind;
    map['name'] = name;
    map['natSubnets'] = natSubnets;
    map['producerForwardingRule'] = producerForwardingRule;
    map['pscServiceAttachmentId'] = pscServiceAttachmentId.toMap();
    map['reconcileConnections'] = reconcileConnections;
    map['region'] = region;
    map['selfLink'] = selfLink;
    map['targetService'] = targetService;
    map['tunnelingConfig'] = tunnelingConfig.toMap();
    return map;
  }

  factory GetServiceAttachmentComputeBetaResult.fromMap(
      Map<String, dynamic> map) {
    return GetServiceAttachmentComputeBetaResult(
      connectedEndpoints: pulumi.Input.decodeList<
              ServiceAttachmentConnectedEndpointResponseComputeBeta>(
          map['connectedEndpoints'],
          (value) =>
              ServiceAttachmentConnectedEndpointResponseComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      connectionPreference: map['connectionPreference'] as String,
      consumerAcceptLists: pulumi.Input.decodeList<
              ServiceAttachmentConsumerProjectLimitResponseComputeBeta>(
          map['consumerAcceptLists'],
          (value) =>
              ServiceAttachmentConsumerProjectLimitResponseComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      consumerRejectLists: (map['consumerRejectLists'] as List).cast<String>(),
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      domainNames: (map['domainNames'] as List).cast<String>(),
      enableProxyProtocol: map['enableProxyProtocol'] as bool,
      fingerprint: map['fingerprint'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      natSubnets: (map['natSubnets'] as List).cast<String>(),
      producerForwardingRule: map['producerForwardingRule'] as String,
      pscServiceAttachmentId: Uint128ResponseComputeBeta.fromMap(
          (map['pscServiceAttachmentId'] as Map).cast<String, dynamic>()),
      reconcileConnections: map['reconcileConnections'] as bool,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      targetService: map['targetService'] as String,
      tunnelingConfig:
          ServiceAttachmentTunnelingConfigResponseComputeBeta.fromMap(
              (map['tunnelingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
