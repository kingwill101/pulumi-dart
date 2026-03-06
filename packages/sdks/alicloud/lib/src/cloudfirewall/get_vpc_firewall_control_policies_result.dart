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
  const GetVpcFirewallControlPoliciesResult({
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
      aclAction: (() { final guardedValue = map['aclAction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      aclUuid: (() { final guardedValue = map['aclUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memberUid: (() { final guardedValue = map['memberUid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      policies: pulumi.Input.decodeList<GetVpcFirewallControlPoliciesPolicy>(map['policies']!, (value) => GetVpcFirewallControlPoliciesPolicy.fromMap((value as Map).cast<String, dynamic>())),
      proto: (() { final guardedValue = map['proto']; if (guardedValue == null) return null; return guardedValue as String; })(),
      release: (() { final guardedValue = map['release']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcFirewallId: map['vpcFirewallId'] as String,
    );
  }
}

