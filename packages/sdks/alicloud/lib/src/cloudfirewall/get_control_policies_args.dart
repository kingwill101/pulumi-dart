// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_get_control_policies_get_control_policies_args_doc}
/// Arguments for getControlPolicies.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_get_control_policies_get_control_policies_args_doc}
class GetControlPoliciesArgs {
  /// The action that Cloud Firewall performs on the traffic. Valid values: `accept`, `drop`, `log`.
  final pulumi.Input<String>? aclAction;
  /// The unique ID of the access control policy.
  final pulumi.Input<String>? aclUuid;
  /// The description of the access control policy.
  final pulumi.Input<String>? description;
  /// The destination address defined in the access control policy.
  final pulumi.Input<String>? destination;
  /// The direction of the traffic to which the access control policy applies. Valid values: `in`, `out`.
  final pulumi.Input<String> direction;
  /// The IP version of the address in the access control policy.
  final pulumi.Input<String>? ipVersion;
  /// The language of the content within the response. Valid values: `en`, `zh`.
  final pulumi.Input<String>? lang;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The type of the protocol in the access control policy. Valid values: If `direction` is  `in`, the valid value is `ANY`. If `direction` is `out`, the valid values are `ANY`, `TCP`, `UDP`, `ICMP`.
  final pulumi.Input<String>? proto;
  /// The source address in the access control policy.
  final pulumi.Input<String>? source;

  /// Creates a new [GetControlPoliciesArgs].
  /// [aclAction] The action that Cloud Firewall performs on the traffic. Valid values: `accept`, `drop`, `log`.
  /// [aclUuid] The unique ID of the access control policy.
  /// [description] The description of the access control policy.
  /// [destination] The destination address defined in the access control policy.
  /// [direction] The direction of the traffic to which the access control policy applies. Valid values: `in`, `out`.
  /// [ipVersion] The IP version of the address in the access control policy.
  /// [lang] The language of the content within the response. Valid values: `en`, `zh`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [proto] The type of the protocol in the access control policy. Valid values: If `direction` is  `in`, the valid value is `ANY`. If `direction` is `out`, the valid values are `ANY`, `TCP`, `UDP`, `ICMP`.
  /// [source] The source address in the access control policy.
  GetControlPoliciesArgs({
    pulumi.Output<String>? aclAction,
    pulumi.Output<String>? aclUuid,
    pulumi.Output<String>? description,
    pulumi.Output<String>? destination,
    required pulumi.Output<String> direction,
    pulumi.Output<String>? ipVersion,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? proto,
    pulumi.Output<String>? source,
  }) :
      aclAction = pulumi.Input.asOptionalInput<String>(aclAction),
      aclUuid = pulumi.Input.asOptionalInput<String>(aclUuid),
      description = pulumi.Input.asOptionalInput<String>(description),
      destination = pulumi.Input.asOptionalInput<String>(destination),
      direction = pulumi.Input.asInput<String>(direction),
      ipVersion = pulumi.Input.asOptionalInput<String>(ipVersion),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      proto = pulumi.Input.asOptionalInput<String>(proto),
      source = pulumi.Input.asOptionalInput<String>(source);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclAction': ?aclAction,
      'aclUuid': ?aclUuid,
      'description': ?description,
      'destination': ?destination,
      'direction': direction,
      'ipVersion': ?ipVersion,
      'lang': ?lang,
      'outputFile': ?outputFile,
      'proto': ?proto,
      'source': ?source,
    };
  }

  factory GetControlPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetControlPoliciesArgs(
      aclAction: map['aclAction'] == null ? null : pulumi.Output.create<String>(map['aclAction'] as String),
      aclUuid: map['aclUuid'] == null ? null : pulumi.Output.create<String>(map['aclUuid'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destination: map['destination'] == null ? null : pulumi.Output.create<String>(map['destination'] as String),
      direction: pulumi.Output.create<String>(map['direction'] as String),
      ipVersion: map['ipVersion'] == null ? null : pulumi.Output.create<String>(map['ipVersion'] as String),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      proto: map['proto'] == null ? null : pulumi.Output.create<String>(map['proto'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
    );
  }
}

