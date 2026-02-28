// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_attachment_connection_preference_compute_v1.dart';
import 'service_attachment_consumer_project_limit_compute_v1.dart';

/// {@template pulumi_compute_v1_service_attachment_compute_v1_args_doc}
/// The set of arguments for ServiceAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_service_attachment_compute_v1_args_doc}
class ServiceAttachmentComputeV1Args {
  /// The connection preference of service attachment. The value can be set to ACCEPT_AUTOMATIC. An ACCEPT_AUTOMATIC service attachment is one that always accepts the connection from consumer forwarding rules.
  final pulumi.Input<ServiceAttachmentConnectionPreferenceComputeV1>? connectionPreference;
  /// Projects that are allowed to connect to this service attachment.
  final pulumi.Input<List<ServiceAttachmentConsumerProjectLimitComputeV1>>? consumerAcceptLists;
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

  /// Creates a new [ServiceAttachmentComputeV1Args].
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
  ServiceAttachmentComputeV1Args({
    ServiceAttachmentConnectionPreferenceComputeV1? connectionPreference,
    List<ServiceAttachmentConsumerProjectLimitComputeV1>? consumerAcceptLists,
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
  }) :
      connectionPreference = pulumi.Input.asOptionalInput<ServiceAttachmentConnectionPreferenceComputeV1>(connectionPreference),
      consumerAcceptLists = pulumi.Input.asOptionalInput<List<ServiceAttachmentConsumerProjectLimitComputeV1>>(consumerAcceptLists),
      consumerRejectLists = pulumi.Input.asOptionalInput<List<String>>(consumerRejectLists),
      description = pulumi.Input.asOptionalInput<String>(description),
      domainNames = pulumi.Input.asOptionalInput<List<String>>(domainNames),
      enableProxyProtocol = pulumi.Input.asOptionalInput<bool>(enableProxyProtocol),
      name = pulumi.Input.asOptionalInput<String>(name),
      natSubnets = pulumi.Input.asOptionalInput<List<String>>(natSubnets),
      producerForwardingRule = pulumi.Input.asOptionalInput<String>(producerForwardingRule),
      project = pulumi.Input.asOptionalInput<String>(project),
      reconcileConnections = pulumi.Input.asOptionalInput<bool>(reconcileConnections),
      region = pulumi.Input.asInput<String>(region),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      targetService = pulumi.Input.asOptionalInput<String>(targetService);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPreference': ?pulumi.Input.mapOptionalInputValue<ServiceAttachmentConnectionPreferenceComputeV1, String>(connectionPreference, (value) => value.value),
      'consumerAcceptLists': ?pulumi.Input.mapOptionalInputValue<List<ServiceAttachmentConsumerProjectLimitComputeV1>, List<Map<String, dynamic>>>(consumerAcceptLists, (value) => pulumi.Input.encodeList<ServiceAttachmentConsumerProjectLimitComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'consumerRejectLists': ?consumerRejectLists,
      'description': ?description,
      'domainNames': ?domainNames,
      'enableProxyProtocol': ?enableProxyProtocol,
      'name': ?name,
      'natSubnets': ?natSubnets,
      'producerForwardingRule': ?producerForwardingRule,
      'project': ?project,
      'reconcileConnections': ?reconcileConnections,
      'region': region,
      'requestId': ?requestId,
      'targetService': ?targetService,
    };
  }

  factory ServiceAttachmentComputeV1Args.fromMap(Map<String, dynamic> map) {
    return ServiceAttachmentComputeV1Args(
      connectionPreference: map['connectionPreference'] == null ? null : ServiceAttachmentConnectionPreferenceComputeV1.fromValue(map['connectionPreference'] as String),
      consumerAcceptLists: map['consumerAcceptLists'] == null ? null : pulumi.Input.decodeList<ServiceAttachmentConsumerProjectLimitComputeV1>(map['consumerAcceptLists'], (value) => ServiceAttachmentConsumerProjectLimitComputeV1.fromMap((value as Map).cast<String, dynamic>())),
      consumerRejectLists: map['consumerRejectLists'] == null ? null : (map['consumerRejectLists'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description'] as String,
      domainNames: map['domainNames'] == null ? null : (map['domainNames'] as List).cast<String>(),
      enableProxyProtocol: map['enableProxyProtocol'] == null ? null : map['enableProxyProtocol'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      natSubnets: map['natSubnets'] == null ? null : (map['natSubnets'] as List).cast<String>(),
      producerForwardingRule: map['producerForwardingRule'] == null ? null : map['producerForwardingRule'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      reconcileConnections: map['reconcileConnections'] == null ? null : map['reconcileConnections'] as bool,
      region: map['region'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      targetService: map['targetService'] == null ? null : map['targetService'] as String,
    );
  }
}

