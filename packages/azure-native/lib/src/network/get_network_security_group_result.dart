// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_log_response.dart';
import 'network_interface_response.dart';
import 'security_rule_response.dart';
import 'subnet_response.dart';

/// Result data returned by getNetworkSecurityGroup.
class GetNetworkSecurityGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The default security rules of network security group.
  final List<SecurityRuleResponse> defaultSecurityRules;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// A collection of references to flow log resources.
  final List<FlowLogResponse> flowLogs;
  /// When enabled, flows created from Network Security Group connections will be re-evaluated when rules are updates. Initial enablement will trigger re-evaluation.
  final bool? flushConnection;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// A collection of references to network interfaces.
  final List<NetworkInterfaceResponse> networkInterfaces;
  /// The provisioning state of the network security group resource.
  final String provisioningState;
  /// The resource GUID property of the network security group resource.
  final String resourceGuid;
  /// A collection of security rules of the network security group.
  final List<SecurityRuleResponse>? securityRules;
  /// A collection of references to subnets.
  final List<SubnetResponse> subnets;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;

  /// Creates a new [GetNetworkSecurityGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [defaultSecurityRules] The default security rules of network security group.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [flowLogs] A collection of references to flow log resources.
  /// [flushConnection] When enabled, flows created from Network Security Group connections will be re-evaluated when rules are updates. Initial enablement will trigger re-evaluation.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [networkInterfaces] A collection of references to network interfaces.
  /// [provisioningState] The provisioning state of the network security group resource.
  /// [resourceGuid] The resource GUID property of the network security group resource.
  /// [securityRules] A collection of security rules of the network security group.
  /// [subnets] A collection of references to subnets.
  /// [tags] Resource tags.
  /// [type] Resource type.
  GetNetworkSecurityGroupResult({
    required this.azureApiVersion,
    required this.defaultSecurityRules,
    required this.etag,
    required this.flowLogs,
    this.flushConnection,
    this.id,
    this.location,
    required this.name,
    required this.networkInterfaces,
    required this.provisioningState,
    required this.resourceGuid,
    this.securityRules,
    required this.subnets,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'defaultSecurityRules': pulumi.Input.encodeList<SecurityRuleResponse, Map<String, dynamic>>(defaultSecurityRules, (value) => value.toMap()),
      'etag': etag,
      'flowLogs': pulumi.Input.encodeList<FlowLogResponse, Map<String, dynamic>>(flowLogs, (value) => value.toMap()),
      'flushConnection': ?flushConnection,
      'id': ?id,
      'location': ?location,
      'name': name,
      'networkInterfaces': pulumi.Input.encodeList<NetworkInterfaceResponse, Map<String, dynamic>>(networkInterfaces, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'securityRules': ?securityRules == null ? null : pulumi.Input.encodeList<SecurityRuleResponse, Map<String, dynamic>>(securityRules!, (value) => value.toMap()),
      'subnets': pulumi.Input.encodeList<SubnetResponse, Map<String, dynamic>>(subnets, (value) => value.toMap()),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetNetworkSecurityGroupResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      defaultSecurityRules: pulumi.Input.decodeList<SecurityRuleResponse>(map['defaultSecurityRules'], (value) => SecurityRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      etag: map['etag'] as String,
      flowLogs: pulumi.Input.decodeList<FlowLogResponse>(map['flowLogs'], (value) => FlowLogResponse.fromMap((value as Map).cast<String, dynamic>())),
      flushConnection: map['flushConnection'] == null ? null : map['flushConnection'] as bool,
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      networkInterfaces: pulumi.Input.decodeList<NetworkInterfaceResponse>(map['networkInterfaces'], (value) => NetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      resourceGuid: map['resourceGuid'] as String,
      securityRules: map['securityRules'] == null ? null : pulumi.Input.decodeList<SecurityRuleResponse>(map['securityRules'], (value) => SecurityRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      subnets: pulumi.Input.decodeList<SubnetResponse>(map['subnets'], (value) => SubnetResponse.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

