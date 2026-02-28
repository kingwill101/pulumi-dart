// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_attachment_connection_preference_compute_beta.dart';
import 'service_attachment_consumer_project_limit_compute_beta.dart';
import 'service_attachment_tunneling_config_compute_beta.dart';

/// {@template pulumi_compute_beta_service_attachment_compute_beta_args_doc}
/// The set of arguments for ServiceAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_service_attachment_compute_beta_args_doc}
class ServiceAttachmentComputeBetaArgs {
  /// The connection preference of service attachment. The value can be set to ACCEPT_AUTOMATIC. An ACCEPT_AUTOMATIC service attachment is one that always accepts the connection from consumer forwarding rules.
  final pulumi.Input<ServiceAttachmentConnectionPreferenceComputeBeta>?
      connectionPreference;

  /// Projects that are allowed to connect to this service attachment.
  final pulumi.Input<List<ServiceAttachmentConsumerProjectLimitComputeBeta>>?
      consumerAcceptLists;

  /// Projects that are not allowed to connect to this service attachment. The project can be specified using its id or number.
  final pulumi.Input<List<String>>? consumerRejectLists;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// If specified, the domain name will be used during the integration between the PSC connected endpoints and the Cloud DNS. For example, this is a valid domain name: "p.mycompany.com.". Current max number of domain names supported is 1.
  final pulumi.Input<List<String>>? domainNames;

  /// If true, enable the proxy protocol which is for supplying client TCP/IP address data in TCP connections that traverse proxies on their way to destination servers.
  final pulumi.Input<bool>? enableProxyProtocol;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// An array of URLs where each entry is the URL of a subnet provided by the service producer to use for NAT in this service attachment.
  final pulumi.Input<List<String>>? natSubnets;

  /// The URL of a forwarding rule with loadBalancingScheme INTERNAL* that is serving the endpoint identified by this service attachment.
  final pulumi.Input<String>? producerForwardingRule;
  final pulumi.Input<String>? project;

  /// This flag determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints. - If false, connection policy update will only affect existing PENDING PSC endpoints. Existing ACCEPTED/REJECTED endpoints will remain untouched regardless how the connection policy is modified . - If true, update will affect both PENDING and ACCEPTED/REJECTED PSC endpoints. For example, an ACCEPTED PSC endpoint will be moved to REJECTED if its project is added to the reject list. For newly created service attachment, this boolean defaults to false.
  final pulumi.Input<bool>? reconcileConnections;
  final pulumi.Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// The URL of a service serving the endpoint identified by this service attachment.
  final pulumi.Input<String>? targetService;

  /// When a tunneling config is set on this service attachment it will encapsulate traffic between consumer and producer. When tunneling is enabled: - nat_subnets must be unset - enable_proxy_protocol must be false - producer_forwarding_rule must be a L4 ILB. -
  final pulumi.Input<ServiceAttachmentTunnelingConfigComputeBeta>?
      tunnelingConfig;

  /// Creates a new [ServiceAttachmentComputeBetaArgs].
  /// [connectionPreference] The connection preference of service attachment. The value can be set to ACCEPT_AUTOMATIC. An ACCEPT_AUTOMATIC service attachment is one that always accepts the connection from consumer forwarding rules.
  /// [consumerAcceptLists] Projects that are allowed to connect to this service attachment.
  /// [consumerRejectLists] Projects that are not allowed to connect to this service attachment. The project can be specified using its id or number.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [domainNames] If specified, the domain name will be used during the integration between the PSC connected endpoints and the Cloud DNS. For example, this is a valid domain name: "p.mycompany.com.". Current max number of domain names supported is 1.
  /// [enableProxyProtocol] If true, enable the proxy protocol which is for supplying client TCP/IP address data in TCP connections that traverse proxies on their way to destination servers.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [natSubnets] An array of URLs where each entry is the URL of a subnet provided by the service producer to use for NAT in this service attachment.
  /// [producerForwardingRule] The URL of a forwarding rule with loadBalancingScheme INTERNAL* that is serving the endpoint identified by this service attachment.
  /// [project] Optional.
  /// [reconcileConnections] This flag determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints. - If false, connection policy update will only affect existing PENDING PSC endpoints. Existing ACCEPTED/REJECTED endpoints will remain untouched regardless how the connection policy is modified . - If true, update will affect both PENDING and ACCEPTED/REJECTED PSC endpoints. For example, an ACCEPTED PSC endpoint will be moved to REJECTED if its project is added to the reject list. For newly created service attachment, this boolean defaults to false.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [targetService] The URL of a service serving the endpoint identified by this service attachment.
  /// [tunnelingConfig] When a tunneling config is set on this service attachment it will encapsulate traffic between consumer and producer. When tunneling is enabled: - nat_subnets must be unset - enable_proxy_protocol must be false - producer_forwarding_rule must be a L4 ILB. -
  ServiceAttachmentComputeBetaArgs({
    ServiceAttachmentConnectionPreferenceComputeBeta? connectionPreference,
    List<ServiceAttachmentConsumerProjectLimitComputeBeta>? consumerAcceptLists,
    List<String>? consumerRejectLists,
    String? description,
    List<String>? domainNames,
    bool? enableProxyProtocol,
    String? name,
    List<String>? natSubnets,
    String? producerForwardingRule,
    String? project,
    bool? reconcileConnections,
    required String region,
    String? requestId,
    String? targetService,
    ServiceAttachmentTunnelingConfigComputeBeta? tunnelingConfig,
  })  : connectionPreference = pulumi.Input.asOptionalInput<
                ServiceAttachmentConnectionPreferenceComputeBeta>(
            connectionPreference),
        consumerAcceptLists = pulumi.Input.asOptionalInput<
                List<ServiceAttachmentConsumerProjectLimitComputeBeta>>(
            consumerAcceptLists),
        consumerRejectLists =
            pulumi.Input.asOptionalInput<List<String>>(consumerRejectLists),
        description = pulumi.Input.asOptionalInput<String>(description),
        domainNames = pulumi.Input.asOptionalInput<List<String>>(domainNames),
        enableProxyProtocol =
            pulumi.Input.asOptionalInput<bool>(enableProxyProtocol),
        name = pulumi.Input.asOptionalInput<String>(name),
        natSubnets = pulumi.Input.asOptionalInput<List<String>>(natSubnets),
        producerForwardingRule =
            pulumi.Input.asOptionalInput<String>(producerForwardingRule),
        project = pulumi.Input.asOptionalInput<String>(project),
        reconcileConnections =
            pulumi.Input.asOptionalInput<bool>(reconcileConnections),
        region = pulumi.Input.asInput<String>(region),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        targetService = pulumi.Input.asOptionalInput<String>(targetService),
        tunnelingConfig = pulumi.Input.asOptionalInput<
            ServiceAttachmentTunnelingConfigComputeBeta>(tunnelingConfig);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionPreferenceValue = connectionPreference;
    if (connectionPreferenceValue != null) {
      map['connectionPreference'] = pulumi.Input.mapOptionalInputValue<
          ServiceAttachmentConnectionPreferenceComputeBeta,
          String>(connectionPreferenceValue, (value) => value.value);
    }
    final consumerAcceptListsValue = consumerAcceptLists;
    if (consumerAcceptListsValue != null) {
      map['consumerAcceptLists'] = pulumi.Input.mapOptionalInputValue<
              List<ServiceAttachmentConsumerProjectLimitComputeBeta>,
              List<Map<String, dynamic>>>(
          consumerAcceptListsValue,
          (value) => pulumi.Input.encodeList<
              ServiceAttachmentConsumerProjectLimitComputeBeta,
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
      map['tunnelingConfig'] = pulumi.Input.mapOptionalInputValue<
          ServiceAttachmentTunnelingConfigComputeBeta,
          Map<String, dynamic>>(tunnelingConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ServiceAttachmentComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return ServiceAttachmentComputeBetaArgs(
      connectionPreference: map['connectionPreference'] == null
          ? null
          : ServiceAttachmentConnectionPreferenceComputeBeta.fromValue(
              map['connectionPreference'] as String),
      consumerAcceptLists: map['consumerAcceptLists'] == null
          ? null
          : pulumi.Input.decodeList<
                  ServiceAttachmentConsumerProjectLimitComputeBeta>(
              map['consumerAcceptLists'],
              (value) =>
                  ServiceAttachmentConsumerProjectLimitComputeBeta.fromMap(
                      (value as Map).cast<String, dynamic>())),
      consumerRejectLists: map['consumerRejectLists'] == null
          ? null
          : (map['consumerRejectLists'] as List).cast<String>(),
      description:
          map['description'] == null ? null : map['description'] as String,
      domainNames: map['domainNames'] == null
          ? null
          : (map['domainNames'] as List).cast<String>(),
      enableProxyProtocol: map['enableProxyProtocol'] == null
          ? null
          : map['enableProxyProtocol'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      natSubnets: map['natSubnets'] == null
          ? null
          : (map['natSubnets'] as List).cast<String>(),
      producerForwardingRule: map['producerForwardingRule'] == null
          ? null
          : map['producerForwardingRule'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      reconcileConnections: map['reconcileConnections'] == null
          ? null
          : map['reconcileConnections'] as bool,
      region: map['region'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      targetService:
          map['targetService'] == null ? null : map['targetService'] as String,
      tunnelingConfig: map['tunnelingConfig'] == null
          ? null
          : ServiceAttachmentTunnelingConfigComputeBeta.fromMap(
              (map['tunnelingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
