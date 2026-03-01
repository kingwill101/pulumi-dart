// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// A load balancing rule for a load balancer.
class LoadBalancingRule {
  /// A reference to a pool of DIPs. Inbound traffic is randomly load balanced across IPs in the backend IPs.
  final SubResource? backendAddressPool;
  /// An array of references to pool of DIPs.
  final List<SubResource>? backendAddressPools;
  /// The port used for internal connections on the endpoint. Acceptable values are between 0 and 65535. Note that value 0 enables "Any Port".
  final int? backendPort;
  /// Configures SNAT for the VMs in the backend pool to use the publicIP address specified in the frontend of the load balancing rule.
  final bool? disableOutboundSnat;
  /// Configures a virtual machine's endpoint for the floating IP capability required to configure a SQL AlwaysOn Availability Group. This setting is required when using the SQL AlwaysOn Availability Groups in SQL server. This setting can't be changed after you create the endpoint.
  final bool? enableFloatingIP;
  /// Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  final bool? enableTcpReset;
  /// A reference to frontend IP addresses.
  final SubResource? frontendIPConfiguration;
  /// The port for the external endpoint. Port numbers for each rule must be unique within the Load Balancer. Acceptable values are between 0 and 65534. Note that value 0 enables "Any Port".
  final int frontendPort;
  /// Resource ID.
  final String? id;
  /// The timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. The default value is 4 minutes. This element is only used when the protocol is set to TCP.
  final int? idleTimeoutInMinutes;
  /// The load distribution policy for this rule.
  final String? loadDistribution;
  /// The name of the resource that is unique within the set of load balancing rules used by the load balancer. This name can be used to access the resource.
  final String? name;
  /// The reference to the load balancer probe used by the load balancing rule.
  final SubResource? probe;
  /// The reference to the transport protocol used by the load balancing rule.
  final String protocol;

  /// Creates a new [LoadBalancingRule].
  /// [backendAddressPool] A reference to a pool of DIPs. Inbound traffic is randomly load balanced across IPs in the backend IPs.
  /// [backendAddressPools] An array of references to pool of DIPs.
  /// [backendPort] The port used for internal connections on the endpoint. Acceptable values are between 0 and 65535. Note that value 0 enables "Any Port".
  /// [disableOutboundSnat] Configures SNAT for the VMs in the backend pool to use the publicIP address specified in the frontend of the load balancing rule.
  /// [enableFloatingIP] Configures a virtual machine's endpoint for the floating IP capability required to configure a SQL AlwaysOn Availability Group. This setting is required when using the SQL AlwaysOn Availability Groups in SQL server. This setting can't be changed after you create the endpoint.
  /// [enableTcpReset] Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  /// [frontendIPConfiguration] A reference to frontend IP addresses.
  /// [frontendPort] The port for the external endpoint. Port numbers for each rule must be unique within the Load Balancer. Acceptable values are between 0 and 65534. Note that value 0 enables "Any Port".
  /// [id] Resource ID.
  /// [idleTimeoutInMinutes] The timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. The default value is 4 minutes. This element is only used when the protocol is set to TCP.
  /// [loadDistribution] The load distribution policy for this rule.
  /// [name] The name of the resource that is unique within the set of load balancing rules used by the load balancer. This name can be used to access the resource.
  /// [probe] The reference to the load balancer probe used by the load balancing rule.
  /// [protocol] The reference to the transport protocol used by the load balancing rule.
  LoadBalancingRule({
    this.backendAddressPool,
    this.backendAddressPools,
    this.backendPort,
    this.disableOutboundSnat,
    this.enableFloatingIP,
    this.enableTcpReset,
    this.frontendIPConfiguration,
    required this.frontendPort,
    this.id,
    this.idleTimeoutInMinutes,
    this.loadDistribution,
    this.name,
    this.probe,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPool': ?backendAddressPool == null ? null : backendAddressPool!.toMap(),
      'backendAddressPools': ?backendAddressPools == null ? null : pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(backendAddressPools!, (value) => value.toMap()),
      'backendPort': ?backendPort,
      'disableOutboundSnat': ?disableOutboundSnat,
      'enableFloatingIP': ?enableFloatingIP,
      'enableTcpReset': ?enableTcpReset,
      'frontendIPConfiguration': ?frontendIPConfiguration == null ? null : frontendIPConfiguration!.toMap(),
      'frontendPort': frontendPort,
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'loadDistribution': ?loadDistribution,
      'name': ?name,
      'probe': ?probe == null ? null : probe!.toMap(),
      'protocol': protocol,
    };
  }

  factory LoadBalancingRule.fromMap(Map<String, dynamic> map) {
    return LoadBalancingRule(
      backendAddressPool: map['backendAddressPool'] == null ? null : SubResource.fromMap((map['backendAddressPool'] as Map).cast<String, dynamic>()),
      backendAddressPools: map['backendAddressPools'] == null ? null : pulumi.Input.decodeList<SubResource>(map['backendAddressPools'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>())),
      backendPort: map['backendPort'] == null ? null : map['backendPort'] as int,
      disableOutboundSnat: map['disableOutboundSnat'] == null ? null : map['disableOutboundSnat'] as bool,
      enableFloatingIP: map['enableFloatingIP'] == null ? null : map['enableFloatingIP'] as bool,
      enableTcpReset: map['enableTcpReset'] == null ? null : map['enableTcpReset'] as bool,
      frontendIPConfiguration: map['frontendIPConfiguration'] == null ? null : SubResource.fromMap((map['frontendIPConfiguration'] as Map).cast<String, dynamic>()),
      frontendPort: map['frontendPort'] as int,
      id: map['id'] == null ? null : map['id'] as String,
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : map['idleTimeoutInMinutes'] as int,
      loadDistribution: map['loadDistribution'] == null ? null : map['loadDistribution'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      probe: map['probe'] == null ? null : SubResource.fromMap((map['probe'] as Map).cast<String, dynamic>()),
      protocol: map['protocol'] as String,
    );
  }
}

