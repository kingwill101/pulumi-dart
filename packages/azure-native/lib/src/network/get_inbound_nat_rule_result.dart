// ignore_for_file: unused_element, unnecessary_cast

import 'network_interface_ipconfiguration_response.dart';
import 'sub_resource_response.dart';

/// Result data returned by getInboundNatRule.
class GetInboundNatRuleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A reference to backendAddressPool resource.
  final SubResourceResponse? backendAddressPool;
  /// A reference to a private IP address defined on a network interface of a VM. Traffic sent to the frontend port of each of the frontend IP configurations is forwarded to the backend IP.
  final NetworkInterfaceIPConfigurationResponse backendIPConfiguration;
  /// The port used for the internal endpoint. Acceptable values range from 1 to 65535.
  final int? backendPort;
  /// Configures a virtual machine's endpoint for the floating IP capability required to configure a SQL AlwaysOn Availability Group. This setting is required when using the SQL AlwaysOn Availability Groups in SQL server. This setting can't be changed after you create the endpoint.
  final bool? enableFloatingIP;
  /// Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  final bool? enableTcpReset;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// A reference to frontend IP addresses.
  final SubResourceResponse? frontendIPConfiguration;
  /// The port for the external endpoint. Port numbers for each rule must be unique within the Load Balancer. Acceptable values range from 1 to 65534.
  final int? frontendPort;
  /// The port range end for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeStart. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534.
  final int? frontendPortRangeEnd;
  /// The port range start for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeEnd. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534.
  final int? frontendPortRangeStart;
  /// Resource ID.
  final String? id;
  /// The timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. The default value is 4 minutes. This element is only used when the protocol is set to TCP.
  final int? idleTimeoutInMinutes;
  /// The name of the resource that is unique within the set of inbound NAT rules used by the load balancer. This name can be used to access the resource.
  final String? name;
  /// The reference to the transport protocol used by the load balancing rule.
  final String? protocol;
  /// The provisioning state of the inbound NAT rule resource.
  final String provisioningState;
  /// Type of the resource.
  final String type;

  /// Creates a new [GetInboundNatRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [backendAddressPool] A reference to backendAddressPool resource.
  /// [backendIPConfiguration] A reference to a private IP address defined on a network interface of a VM. Traffic sent to the frontend port of each of the frontend IP configurations is forwarded to the backend IP.
  /// [backendPort] The port used for the internal endpoint. Acceptable values range from 1 to 65535.
  /// [enableFloatingIP] Configures a virtual machine's endpoint for the floating IP capability required to configure a SQL AlwaysOn Availability Group. This setting is required when using the SQL AlwaysOn Availability Groups in SQL server. This setting can't be changed after you create the endpoint.
  /// [enableTcpReset] Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [frontendIPConfiguration] A reference to frontend IP addresses.
  /// [frontendPort] The port for the external endpoint. Port numbers for each rule must be unique within the Load Balancer. Acceptable values range from 1 to 65534.
  /// [frontendPortRangeEnd] The port range end for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeStart. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534.
  /// [frontendPortRangeStart] The port range start for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeEnd. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534.
  /// [id] Resource ID.
  /// [idleTimeoutInMinutes] The timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. The default value is 4 minutes. This element is only used when the protocol is set to TCP.
  /// [name] The name of the resource that is unique within the set of inbound NAT rules used by the load balancer. This name can be used to access the resource.
  /// [protocol] The reference to the transport protocol used by the load balancing rule.
  /// [provisioningState] The provisioning state of the inbound NAT rule resource.
  /// [type] Type of the resource.
  GetInboundNatRuleResult({
    required this.azureApiVersion,
    this.backendAddressPool,
    required this.backendIPConfiguration,
    this.backendPort,
    this.enableFloatingIP,
    this.enableTcpReset,
    required this.etag,
    this.frontendIPConfiguration,
    this.frontendPort,
    this.frontendPortRangeEnd,
    this.frontendPortRangeStart,
    this.id,
    this.idleTimeoutInMinutes,
    this.name,
    this.protocol,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'backendAddressPool': ?backendAddressPool == null ? null : backendAddressPool!.toMap(),
      'backendIPConfiguration': backendIPConfiguration.toMap(),
      'backendPort': ?backendPort,
      'enableFloatingIP': ?enableFloatingIP,
      'enableTcpReset': ?enableTcpReset,
      'etag': etag,
      'frontendIPConfiguration': ?frontendIPConfiguration == null ? null : frontendIPConfiguration!.toMap(),
      'frontendPort': ?frontendPort,
      'frontendPortRangeEnd': ?frontendPortRangeEnd,
      'frontendPortRangeStart': ?frontendPortRangeStart,
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'name': ?name,
      'protocol': ?protocol,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory GetInboundNatRuleResult.fromMap(Map<String, dynamic> map) {
    return GetInboundNatRuleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      backendAddressPool: map['backendAddressPool'] == null ? null : SubResourceResponse.fromMap((map['backendAddressPool'] as Map).cast<String, dynamic>()),
      backendIPConfiguration: NetworkInterfaceIPConfigurationResponse.fromMap((map['backendIPConfiguration'] as Map).cast<String, dynamic>()),
      backendPort: map['backendPort'] == null ? null : map['backendPort'] as int,
      enableFloatingIP: map['enableFloatingIP'] == null ? null : map['enableFloatingIP'] as bool,
      enableTcpReset: map['enableTcpReset'] == null ? null : map['enableTcpReset'] as bool,
      etag: map['etag'] as String,
      frontendIPConfiguration: map['frontendIPConfiguration'] == null ? null : SubResourceResponse.fromMap((map['frontendIPConfiguration'] as Map).cast<String, dynamic>()),
      frontendPort: map['frontendPort'] == null ? null : map['frontendPort'] as int,
      frontendPortRangeEnd: map['frontendPortRangeEnd'] == null ? null : map['frontendPortRangeEnd'] as int,
      frontendPortRangeStart: map['frontendPortRangeStart'] == null ? null : map['frontendPortRangeStart'] as int,
      id: map['id'] == null ? null : map['id'] as String,
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : map['idleTimeoutInMinutes'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

