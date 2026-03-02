// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_firewall_control_policies_policy.dart';

/// Result data returned by getVpcFirewallControlPolicies.
class GetVpcFirewallControlPoliciesResult {
  /// Access control over VPC firewalls are set in the access traffic via Alibaba cloud firewall way (ACT).
  final String? aclAction;
  /// Access control over VPC firewalls strategy unique identifier.
  final String? aclUuid;
  /// Access control over VPC firewalls description of the strategy information.
  final String? description;
  /// Access control over VPC firewalls strategy the destination address in.
  final String? destination;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? lang;
  /// The UID of the member account of the current Alibaba cloud account.
  final String? memberUid;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// A list of Cloud Firewall Vpc Firewall Control Policies. Each element contains the following attributes:
  final List<GetVpcFirewallControlPoliciesPolicy> policies;
  /// Access control over VPC firewalls strategy access traffic of the protocol type.
  final String? proto;
  /// The enabled status of the access control policy. The policy is enabled by default after it is created. Value:
  final bool? release;
  /// Access control over VPC firewalls strategy in the source address.
  final String? source;
  /// The ID of the VPC firewall instance.
  final String vpcFirewallId;

  /// Creates a new [GetVpcFirewallControlPoliciesResult].
  /// [aclAction] Access control over VPC firewalls are set in the access traffic via Alibaba cloud firewall way (ACT).
  /// [aclUuid] Access control over VPC firewalls strategy unique identifier.
  /// [description] Access control over VPC firewalls description of the strategy information.
  /// [destination] Access control over VPC firewalls strategy the destination address in.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [lang] Optional.
  /// [memberUid] The UID of the member account of the current Alibaba cloud account.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [policies] A list of Cloud Firewall Vpc Firewall Control Policies. Each element contains the following attributes:
  /// [proto] Access control over VPC firewalls strategy access traffic of the protocol type.
  /// [release] The enabled status of the access control policy. The policy is enabled by default after it is created. Value:
  /// [source] Access control over VPC firewalls strategy in the source address.
  /// [vpcFirewallId] The ID of the VPC firewall instance.
  GetVpcFirewallControlPoliciesResult({
    this.aclAction,
    this.aclUuid,
    this.description,
    this.destination,
    required this.id,
    required this.ids,
    this.lang,
    this.memberUid,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    required this.policies,
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
      'id': id,
      'ids': ids,
      'lang': ?lang,
      'memberUid': ?memberUid,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'policies': pulumi.Input.encodeList<GetVpcFirewallControlPoliciesPolicy, Map<String, dynamic>>(policies, (value) => value.toMap()),
      'proto': ?proto,
      'release': ?release,
      'source': ?source,
      'vpcFirewallId': vpcFirewallId,
    };
  }

  factory GetVpcFirewallControlPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetVpcFirewallControlPoliciesResult(
      aclAction: map['aclAction'] == null ? null : map['aclAction']! as String,
      aclUuid: map['aclUuid'] == null ? null : map['aclUuid']! as String,
      description: map['description'] == null ? null : map['description']! as String,
      destination: map['destination'] == null ? null : map['destination']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      lang: map['lang'] == null ? null : map['lang']! as String,
      memberUid: map['memberUid'] == null ? null : map['memberUid']! as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
      policies: pulumi.Input.decodeList<GetVpcFirewallControlPoliciesPolicy>(map['policies'], (value) => GetVpcFirewallControlPoliciesPolicy.fromMap((value as Map).cast<String, dynamic>())),
      proto: map['proto'] == null ? null : map['proto']! as String,
      release: map['release'] == null ? null : map['release']! as bool,
      source: map['source'] == null ? null : map['source']! as String,
      vpcFirewallId: map['vpcFirewallId'] as String,
    );
  }
}

