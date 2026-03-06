// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_get_vpc_firewall_control_policies_get_vpc_firewall_control_policies_args_doc}
/// Arguments for getVpcFirewallControlPolicies.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_get_vpc_firewall_control_policies_get_vpc_firewall_control_policies_args_doc}
class GetVpcFirewallControlPoliciesArgs {
  /// The action that Cloud Firewall performs on the traffic. Valid values: `accept`, `drop`, `log`.
  final pulumi.Input<String>? aclAction;
  /// Access control over VPC firewalls strategy unique identifier.
  final pulumi.Input<String>? aclUuid;
  /// Access control over VPC firewalls description of the strategy information.
  final pulumi.Input<String>? description;
  /// Access control over VPC firewalls strategy the destination address in.
  final pulumi.Input<String>? destination;
  /// A list of Vpc Firewall Control Policy IDs.
  final pulumi.Input<List<String>>? ids;
  /// The language of the content within the request and response. Valid values: `zh`, `en`.
  final pulumi.Input<String>? lang;
  /// The UID of the member account of the current Alibaba cloud account.
  final pulumi.Input<String>? memberUid;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// Access control over VPC firewalls strategy access traffic of the protocol type.
  final pulumi.Input<String>? proto;
  /// The enabled status of the access control policy. The policy is enabled by default after it is created. Value:
  /// - **true**: Enable access control policies
  /// - **false**: does not enable access control policies.
  final pulumi.Input<bool>? release;
  /// Access control over VPC firewalls strategy in the source address.
  final pulumi.Input<String>? source;
  /// The ID of the VPC firewall instance. Value:
  /// - When the VPC firewall protects traffic between two VPCs connected through the cloud enterprise network, the policy group ID uses the cloud enterprise network instance ID.
  /// - When the VPC firewall protects traffic between two VPCs connected through the express connection, the policy group ID uses the ID of the VPC firewall instance.
  final pulumi.Input<String> vpcFirewallId;

  /// Creates a new [GetVpcFirewallControlPoliciesArgs].
  /// [aclAction] The action that Cloud Firewall performs on the traffic. Valid values: `accept`, `drop`, `log`.
  /// [aclUuid] Access control over VPC firewalls strategy unique identifier.
  /// [description] Access control over VPC firewalls description of the strategy information.
  /// [destination] Access control over VPC firewalls strategy the destination address in.
  /// [ids] A list of Vpc Firewall Control Policy IDs.
  /// [lang] The language of the content within the request and response. Valid values: `zh`, `en`.
  /// [memberUid] The UID of the member account of the current Alibaba cloud account.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [proto] Access control over VPC firewalls strategy access traffic of the protocol type.
  /// [release] The enabled status of the access control policy. The policy is enabled by default after it is created. Value:
  /// [source] Access control over VPC firewalls strategy in the source address.
  /// [vpcFirewallId] The ID of the VPC firewall instance. Value:
  const GetVpcFirewallControlPoliciesArgs({
    this.aclAction,
    this.aclUuid,
    this.description,
    this.destination,
    this.ids,
    this.lang,
    this.memberUid,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.proto,
    this.release,
    this.source,
    required this.vpcFirewallId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclAction': ?aclAction,
      'aclUuid': ?aclUuid,
      'description': ?description,
      'destination': ?destination,
      'ids': ?ids,
      'lang': ?lang,
      'memberUid': ?memberUid,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'proto': ?proto,
      'release': ?release,
      'source': ?source,
      'vpcFirewallId': vpcFirewallId,
    };
  }

  factory GetVpcFirewallControlPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcFirewallControlPoliciesArgs(
      aclAction: (() { final guardedValue = map['aclAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aclUuid: (() { final guardedValue = map['aclUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memberUid: (() { final guardedValue = map['memberUid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      proto: (() { final guardedValue = map['proto']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      release: (() { final guardedValue = map['release']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcFirewallId: pulumi.Input.fromValue(map['vpcFirewallId'] as String),
    );
  }
}

