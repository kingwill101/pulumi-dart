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
  GetVpcFirewallControlPoliciesArgs({
    String? aclAction,
    String? aclUuid,
    String? description,
    String? destination,
    List<String>? ids,
    String? lang,
    String? memberUid,
    String? outputFile,
    int? pageNumber,
    int? pageSize,
    String? proto,
    bool? release,
    String? source,
    required String vpcFirewallId,
  }) :
      aclAction = pulumi.Input.asOptionalInput<String>(aclAction),
      aclUuid = pulumi.Input.asOptionalInput<String>(aclUuid),
      description = pulumi.Input.asOptionalInput<String>(description),
      destination = pulumi.Input.asOptionalInput<String>(destination),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      memberUid = pulumi.Input.asOptionalInput<String>(memberUid),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      proto = pulumi.Input.asOptionalInput<String>(proto),
      release = pulumi.Input.asOptionalInput<bool>(release),
      source = pulumi.Input.asOptionalInput<String>(source),
      vpcFirewallId = pulumi.Input.asInput<String>(vpcFirewallId);

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
      aclAction: map['aclAction'] == null ? null : map['aclAction'] as String,
      aclUuid: map['aclUuid'] == null ? null : map['aclUuid'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      destination: map['destination'] == null ? null : map['destination'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      lang: map['lang'] == null ? null : map['lang'] as String,
      memberUid: map['memberUid'] == null ? null : map['memberUid'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      proto: map['proto'] == null ? null : map['proto'] as String,
      release: map['release'] == null ? null : map['release'] as bool,
      source: map['source'] == null ? null : map['source'] as String,
      vpcFirewallId: map['vpcFirewallId'] as String,
    );
  }
}

